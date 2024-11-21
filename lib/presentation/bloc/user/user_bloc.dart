import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';
import 'package:maya_test_exam/domain/usecase/get_user_details.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required this.getTransactionHistory,
    required this.getUserDetails,
  }) : super(UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.map(
          fetchTransactionHistory: (args) async {
            emit(state.copyWith(transactionListState: RequestState.loading));
            await Future.delayed(const Duration(seconds: 2));
            final result = await getTransactionHistory.call();
            result.fold(
                (f) => emit(
                      state.copyWith(
                        transactionListState: RequestState.error,
                        errorMessageTransaction: f.message,
                      ),
                    ),
                (list) => emit(state.copyWith(
                    transactionListState: RequestState.loaded,
                    transactions: list)));
          },
          fetchUserDetails: (args) async {
            emit(state.copyWith(userState: RequestState.loading));
            await Future.delayed(const Duration(seconds: 5));
            final result = await getUserDetails.call(args.userId);
            result.fold(
                (f) => emit(
                      state.copyWith(
                        userState: RequestState.error,
                        errorMessageUser: f.message,
                      ),
                    ),
                (user) => emit(state.copyWith(
                    userState: RequestState.loaded, currentUser: user)));
          },
        );
      },
    );
  }

  final GetTransactionHistory getTransactionHistory;
  final GetUserDetails getUserDetails;
}
