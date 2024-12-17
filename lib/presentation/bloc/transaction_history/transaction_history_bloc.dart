import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';

part 'transaction_history_state.dart';
part 'transaction_history_event.dart';
part 'transaction_history_bloc.freezed.dart';

class TransactionHistoryBloc
    extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
  TransactionHistoryBloc({
    required this.getTransactionHistory,
  }) : super(TransactionHistoryState.initial()) {
    on<TransactionHistoryEvent>(
      (event, emit) async {
        await event.map(
          fetchTransactionHistory: (args) async {
            emit(state.copyWith(state: RequestState.loading));
            await Future.delayed(const Duration(seconds: 1));
            final result = await getTransactionHistory.call();
            result.fold(
                (f) => emit(
                      state.copyWith(
                        state: RequestState.error,
                        errorMessage: f.message,
                      ),
                    ),
                (list) => emit(state.copyWith(
                    state: RequestState.loaded, transactions: list)));
          },
        );
      },
    );
  }

  final GetTransactionHistory getTransactionHistory;
}
