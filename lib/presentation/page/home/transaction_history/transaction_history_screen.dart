import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/presentation/bloc/transaction/transaction_bloc.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';
import 'package:maya_test_exam/presentation/page/error/error_screen.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: const TransactionHistoryBody(),
    );

  }
}

class TransactionHistoryBody extends StatefulWidget {
  const TransactionHistoryBody({super.key});

  @override
  State<TransactionHistoryBody> createState() => _TransactionHistoryBodyState();
}

class _TransactionHistoryBodyState extends State<TransactionHistoryBody> {

  TextTheme get textTheme => Theme.of(context).textTheme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      context.read<UserBloc>().add(const UserEvent.fetchTransactionHistory());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if (state.transactionListState == RequestState.error) {
          showToast(
              msg: state.errorMessageTransaction,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      builder: (context, state) {
        if(state.transactionListState == RequestState.loading){
          return const ErrorScreen();
        }else if(state.transactionListState == RequestState.loading){
          return Container(
            margin: const EdgeInsets.only(top: 50),
            child: const SpinKitThreeBounce(
              size: 80,
              color: ColorLight.primary,
            ),
          );
        }else if(state.transactionListState == RequestState.loaded){
          final transactions = state.transactions;
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index){
                  var item = transactions[index];
                  bool hasDateTitle = false;
                  Transaction? previous;
                  if (index != 0) {
                    previous = transactions[index - 1];
                  }else{
                    hasDateTitle = true;
                  }
                  if (!hasDateTitle && previous?.createdAt != null && item.createdAt != null) {
                    bool isSameDay = item.createdAt!.isSameDay(previous!.createdAt!);
                    hasDateTitle = !isSameDay;
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (hasDateTitle)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Text(
                                "${item.createdAt?.toMonthDayString()}",
                                style: textTheme.titleMedium,
                              ),
                            ),
                            const Divider(
                              height: 1,
                            )
                          ],
                        ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Column(
                          children: [
                            Text("Send Money - Maya"),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Amount"),
                                Text('- PHP ${item.amount?.toStringAsFixed(2).toPriceLabel ?? ''}'),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Running Balance"),
                                Text('PHP ${item.balance?.toStringAsFixed(2).toPriceLabel ?? ''}'),
                              ],
                            ),
                            SizedBox(height: 4,),
                            Text(item.createdAt?.toTimeString() ?? ''),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        indent: 16,
                      )
                    ],
                  );
                },
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}

