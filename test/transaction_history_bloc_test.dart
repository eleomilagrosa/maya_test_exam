import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/domain/repositories/transaction_history_repository.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';
import 'package:maya_test_exam/presentation/bloc/transaction_history/transaction_history_bloc.dart';
import 'package:mocktail/mocktail.dart';

import 'widget_test.dart';

class MockTransactionHistoryRepository extends Mock
    implements TransactionHistoryRepository {}

void main() {
  late MockTransactionHistoryRepository mockRepository;
  late GetTransactionHistory getTransactionHistory;

  setUp(() {
    mockRepository = MockTransactionHistoryRepository();
    getTransactionHistory = GetTransactionHistory(mockRepository);
  });

  group('TransactionHistoryBloc', () {
    final tTransactions = [
      Transaction(
        id: 1,
        amount: 100.0,
        balance: 900.0,
        previousBalance: 1000.0,
        userId: 1,
        createdAt: DateTime.now(),
      ),
      Transaction(
        id: 2,
        amount: 50.0,
        balance: 850.0,
        previousBalance: 900.0,
        userId: 1,
        createdAt: DateTime.now(),
      ),
    ];

    const tFailure = FakeFailure('Failed to fetch transaction history');

    test('initial state is TransactionHistoryState.initial()', () {
      final bloc = TransactionHistoryBloc(getTransactionHistory: getTransactionHistory);
      expect(bloc.state, TransactionHistoryState.initial());
    });

    blocTest<TransactionHistoryBloc, TransactionHistoryState>(
      'emits [loading, loaded] when fetchTransactionHistory succeeds',
      build: () {
        when(() => mockRepository.getAllUserTransactionHistory())
            .thenAnswer((_) async => Right(tTransactions));
        return TransactionHistoryBloc(getTransactionHistory: getTransactionHistory);
      },
      act: (bloc) => bloc.add(const TransactionHistoryEvent.fetchTransactionHistory()),
      wait: const Duration(seconds: 1),
      expect: () => [
        TransactionHistoryState.initial().copyWith(state: RequestState.loading),
        TransactionHistoryState.initial().copyWith(
          state: RequestState.loaded,
          transactions: tTransactions,
        ),
      ],
    );

    blocTest<TransactionHistoryBloc, TransactionHistoryState>(
      'emits [loading, error] when fetchTransactionHistory fails',
      build: () {
        when(() => mockRepository.getAllUserTransactionHistory())
            .thenAnswer((_) async => Left(tFailure));
        return TransactionHistoryBloc(getTransactionHistory: getTransactionHistory);
      },
      act: (bloc) => bloc.add(const TransactionHistoryEvent.fetchTransactionHistory()),
      wait: const Duration(seconds: 1),
      expect: () => [
        TransactionHistoryState.initial().copyWith(state: RequestState.loading),
        TransactionHistoryState.initial().copyWith(
          state: RequestState.error,
          errorMessage: tFailure.message,
        ),
      ],
    );
  });
}
