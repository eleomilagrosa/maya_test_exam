part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchTransactionHistory() = _FetchTransactionHistory;
  const factory UserEvent.fetchUserDetails(int userId) = _FetchUserDetails;
}
