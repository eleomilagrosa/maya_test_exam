part of 'send_transaction_bloc.dart';

@freezed
class SendTransactionEvent with _$SendTransactionEvent {
  const factory SendTransactionEvent.sendMoneyTransaction(double amount) =
      _SendMoneyTransaction;
  const factory SendTransactionEvent.resetState() = _ResetState;
}
