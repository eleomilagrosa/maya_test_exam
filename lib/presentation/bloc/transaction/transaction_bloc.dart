import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';
import 'package:maya_test_exam/domain/usecase/send_money_transaction.dart';

part 'transaction_event.dart';

part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc({
    required this.sendMoneyTransaction,
  }) : super(TransactionState.initial()) {
    on<TransactionEvent>(
      (event, emit) async {
        event.map(
          sendMoneyTransaction: (_) {},
        );
      },
    );
  }

  final SendMoneyTransaction sendMoneyTransaction;
}
