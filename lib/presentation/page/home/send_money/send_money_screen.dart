import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/data/model/transaction_model.dart';
import 'package:maya_test_exam/injection.dart';
import 'package:maya_test_exam/presentation/bloc/send_transaction/send_transaction_bloc.dart';
import 'package:maya_test_exam/presentation/page/home/send_money/send_money_error_dialog.dart';
import 'package:maya_test_exam/presentation/page/home/send_money/send_money_success_dialog.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/presentation/widget/custom_text_form_field.dart';
import 'package:maya_test_exam/utilities/logger.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SendTransactionBloc(sendMoneyTransaction: locator()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Send Money"),
        ),
        body: const Column(
          children: [SendMoneyBody()],
        ),
      ),
    );
  }
}

class SendMoneyBody extends StatefulWidget {
  const SendMoneyBody({super.key});

  @override
  State<SendMoneyBody> createState() => _SendMoneyBodyState();
}

class _SendMoneyBodyState extends State<SendMoneyBody> {
  final _formKey = GlobalKey<FormState>();
  String amount = "";

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendTransactionBloc, SendTransactionState>(
      listener: (context, state) async {
        if (state.sendTransactionResult != null) {
          showTransactionDetails(
              context, state.sendTransactionResult?.transaction);
          context
              .read<SendTransactionBloc>()
              .add(const SendTransactionEvent.resetState());
        }
        if (state.state == RequestState.error) {
          showToast(
              msg: state.errorMessage ?? "",
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      builder: (context, state) {
        return Card(
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: CustomTextFormField(
                    textFieldType: TextFieldType.number,
                    helperText: "Amount Help",
                    hintText: "Amount Hint",
                    helperMaxLines: 1,
                    onChanged: (value) {
                      amount = value;
                    },
                    labelText: "Amount",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomRoundedButton(
                          buttonName: "Send Money",
                          icon: Icons.trending_up_rounded,
                          isLoading: state.state == RequestState.loading,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<SendTransactionBloc>().add(
                                  SendTransactionEvent.sendMoneyTransaction(
                                      double.parse(amount)));
                            } else {
                              logger.debug("fail");
                            }
                          }),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future showTransactionDetails(
      BuildContext context, TransactionModel? transaction) async {
    if (transaction != null) {
      await SendMoneySuccessDialog.showDialog(context,
          transaction: transaction);
    } else {
      await SendMoneyErrorDialog.showDialog(context);
    }
    if (context.mounted) {
      context.pop();
    }
  }
}
