part of 'send_transaction_bloc.dart';

@freezed
class SendTransactionState with _$SendTransactionState {
  const factory SendTransactionState({
    required RequestState state,
    String? errorMessage,
    SendTransactionResult? sendTransactionResult,
  }) = _SendTransactionState;

  factory SendTransactionState.initial() => const SendTransactionState(
        state: RequestState.empty,
        errorMessage: '',
        sendTransactionResult: null,
      );
}
