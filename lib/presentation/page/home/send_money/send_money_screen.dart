import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/assets.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/injection.dart';
import 'package:maya_test_exam/presentation/bloc/send_transaction/send_transaction_bloc.dart';
import 'package:maya_test_exam/presentation/widget/custom_rounded_button.dart';
import 'package:maya_test_exam/presentation/widget/custom_text_form_field.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';
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
        if(state.sendTransactionResult != null){
          showTransactionDetails(context, state.sendTransactionResult?.transaction);
          context.read<SendTransactionBloc>().add(const SendTransactionEvent.resetState());
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

  Future showTransactionDetails(BuildContext context, Transaction? transaction) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: ColorLight.card,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        if(transaction != null){
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Transaction Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                buildDetailRow("Amount", "- PHP ${transaction.amount?.toStringAsFixed(2)}"),
                buildDetailRow("Balance", "PHP ${transaction.balance?.toStringAsFixed(2)}"),
                buildDetailRow(
                    "Previous Balance", "PHP ${transaction.previousBalance?.toStringAsFixed(2)}"),
                buildDetailRow(
                  "Created At", transaction.createdAt?.toEEddMMyyyyhhmmaString() ?? '',
                ),
                Image.asset(AppAssets.successIcon, height: 100,),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Transaction Error",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                        "Please Try Again",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Image.asset(AppAssets.errorIcon, height: 100,),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"),
              ),
            ],
          ),
        );

      },
    );
    if(context.mounted){
      context.pop();
    }
  }

  Widget buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
