part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    required RequestState state,
    required String errorMessage,
  }) = _TransactionState;

  factory TransactionState.initial() => const TransactionState(
        state: RequestState.empty,
        errorMessage: '',
      );
}
