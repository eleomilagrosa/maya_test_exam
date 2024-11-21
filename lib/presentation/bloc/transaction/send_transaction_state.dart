part of 'send_transaction_bloc.dart';

@freezed
class SendTransactionState with _$SendTransactionState {
  const factory SendTransactionState({
    required RequestState state,
    required String errorMessage,
    required SendTransactionResult? sendTransactionResult,
  }) = _SendTransactionState;

  factory SendTransactionState.initial() => const SendTransactionState(
        state: RequestState.empty,
        errorMessage: '',
        sendTransactionResult: null,
      );
}
