part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required RequestState userState,
    required RequestState transactionListState,
    required String errorMessageUser,
    required String errorMessageTransaction,
    required User? currentUser,
    required List<Transaction> transactions,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        userState: RequestState.empty,
        transactionListState: RequestState.empty,
        errorMessageUser: '',
        errorMessageTransaction: '',
        currentUser: null,
        transactions: [],
      );
}
