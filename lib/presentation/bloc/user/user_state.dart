part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required RequestState state,
    required String errorMessage,
    required UserEntity? currentUser,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        state: RequestState.empty,
        errorMessage: '',
        currentUser: null,
      );
}
