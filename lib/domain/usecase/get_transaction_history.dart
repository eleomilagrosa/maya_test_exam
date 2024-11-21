import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/domain/repositories/transaction_history_repository.dart';

class GetTransactionHistory {
  GetTransactionHistory(this._repository);

  final TransactionHistoryRepository _repository;

  Future<Either<Failure, List<Transaction>>> call() async {
    final list = await _repository.getAllUserTransactionHistory();
    return list;
  }
}
