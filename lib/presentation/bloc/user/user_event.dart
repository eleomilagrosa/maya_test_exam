part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUserDetails(int userId) = _FetchUserDetails;
}
