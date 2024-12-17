import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maya_test_exam/common/colors.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/toast.dart';
import 'package:maya_test_exam/injection.dart';
import 'package:maya_test_exam/presentation/bloc/transaction_history/transaction_history_bloc.dart';
import 'package:maya_test_exam/presentation/page/error/error_screen.dart';
import 'package:maya_test_exam/presentation/page/home/transaction_history/transaction_history_content.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TransactionHistoryBloc(getTransactionHistory: locator()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Transaction History"),
        ),
        body: const TransactionHistoryBody(),
      ),
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<TransactionHistoryBloc>()
          .add(const TransactionHistoryEvent.fetchTransactionHistory());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionHistoryBloc, TransactionHistoryState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          showToast(
              msg: state.errorMessage,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      builder: (context, state) {
        if (state.state == RequestState.error) {
          return const ErrorScreen();
        } else if (state.state == RequestState.loading) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: const SpinKitThreeBounce(
                  size: 80,
                  color: ColorLight.primary,
                ),
              ),
            ],
          );
        } else if (state.state == RequestState.loaded) {
          final transactions = state.transactions;
          return TransactionHistoryContent(
            transactions: transactions,
          );
        }
        return Container();
      },
    );
  }
}
