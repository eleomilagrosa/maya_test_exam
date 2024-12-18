import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';
import 'package:maya_test_exam/domain/usecase/send_money_transaction.dart';

part 'send_transaction_event.dart';
part 'send_transaction_state.dart';
part 'send_transaction_bloc.freezed.dart';

class SendTransactionBloc
    extends Bloc<SendTransactionEvent, SendTransactionState> {
  SendTransactionBloc({
    required this.sendMoneyTransaction,
  }) : super(SendTransactionState.initial()) {
    on<SendTransactionEvent>(
      (event, emit) async {
        await event.map(
          resetState: (_) async {
            emit(SendTransactionState.initial());
          },
          sendMoneyTransaction: (args) async {
            emit(state.copyWith(state: RequestState.loading));
            await Future.delayed(const Duration(seconds: 1));
            final result = await sendMoneyTransaction.call(amount: args.amount);
            result.fold(
                (f) => emit(
                      state.copyWith(
                        state: RequestState.error,
                        errorMessage: f.message,
                      ),
                    ),
                (res) => emit(state.copyWith(
                      state: RequestState.loaded,
                      sendTransactionResult: res,
                    )));
          },
        );
      },
    );
  }

  final SendMoneyTransaction sendMoneyTransaction;
}
