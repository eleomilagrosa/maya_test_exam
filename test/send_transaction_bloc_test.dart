import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/send_transaction_repository.dart';
import 'package:maya_test_exam/domain/usecase/send_money_transaction.dart';
import 'package:maya_test_exam/presentation/bloc/send_transaction/send_transaction_bloc.dart';
import 'package:mocktail/mocktail.dart';

import 'widget_test.dart';

class MockSendTransactionRepository extends Mock
    implements SendTransactionRepository {}

void main() {
  late MockSendTransactionRepository mockRepository;
  late SendMoneyTransaction sendMoneyTransaction;

  setUp(() {
    mockRepository = MockSendTransactionRepository();
    sendMoneyTransaction = SendMoneyTransaction(mockRepository);
  });

  group('SendTransactionBloc', () {
    const tAmount = 100.0;

    final tTransaction = Transaction(
      id: 1,
      amount: 100.0,
      balance: 900.0,
      previousBalance: 1000.0,
      userId: 1,
      createdAt: DateTime.now(),
    );

    final tUser = User(
      id: 1,
      name: 'Eleojasmil Milagrosa',
      balance: 900.0,
    );

    final tSendTransactionResult = SendTransactionResult(
      transaction: tTransaction,
      user: tUser,
    );

    const tFailure = FakeFailure('Transaction failed');

    test('initial state is SendTransactionState.initial()', () {
      final bloc =
          SendTransactionBloc(sendMoneyTransaction: sendMoneyTransaction);
      expect(bloc.state, SendTransactionState.initial());
    });

    blocTest<SendTransactionBloc, SendTransactionState>(
      'emits [loading, loaded] when sendMoneyTransaction succeeds',
      build: () {
        when(() => mockRepository.sendMoneyTransaction(amount: tAmount))
            .thenAnswer((_) async => Right(tSendTransactionResult));
        return SendTransactionBloc(sendMoneyTransaction: sendMoneyTransaction);
      },
      act: (bloc) =>
          bloc.add(const SendTransactionEvent.sendMoneyTransaction(tAmount)),
      wait: const Duration(seconds: 2),
      expect: () => [
        SendTransactionState.initial().copyWith(state: RequestState.loading),
        SendTransactionState.initial().copyWith(
          state: RequestState.loaded,
          sendTransactionResult: tSendTransactionResult,
        ),
      ],
    );

    blocTest<SendTransactionBloc, SendTransactionState>(
      'emits [loading, error] when sendMoneyTransaction fails',
      build: () {
        when(() => mockRepository.sendMoneyTransaction(amount: tAmount))
            .thenAnswer((_) async => const Left(tFailure));
        return SendTransactionBloc(sendMoneyTransaction: sendMoneyTransaction);
      },
      act: (bloc) =>
          bloc.add(const SendTransactionEvent.sendMoneyTransaction(tAmount)),
      wait: const Duration(seconds: 2),
      expect: () => [
        SendTransactionState.initial().copyWith(state: RequestState.loading),
        SendTransactionState.initial().copyWith(
          state: RequestState.error,
          errorMessage: tFailure.message,
        ),
      ],
    );

    blocTest<SendTransactionBloc, SendTransactionState>(
      'emits [initial] when resetState is added',
      build: () =>
          SendTransactionBloc(sendMoneyTransaction: sendMoneyTransaction),
      act: (bloc) => bloc.add(const SendTransactionEvent.resetState()),
      expect: () => [
        SendTransactionState.initial(),
      ],
    );
  });
}
