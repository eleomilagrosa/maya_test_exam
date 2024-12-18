part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryState with _$TransactionHistoryState {
  const factory TransactionHistoryState({
    required RequestState state,
    required String errorMessage,
    required List<TransactionEntity> transactions,
  }) = _TransactionHistoryState;

  factory TransactionHistoryState.initial() => const TransactionHistoryState(
        state: RequestState.empty,
        errorMessage: '',
        transactions: [],
      );
}
