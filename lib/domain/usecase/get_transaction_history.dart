import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/domain/entity/transaction_entity.dart';
import 'package:maya_test_exam/domain/repositories/transaction_history_repository.dart';

class GetTransactionHistory {
  GetTransactionHistory(this._repository);

  final TransactionHistoryRepository _repository;

  Future<Either<Failure, List<TransactionEntity>>> call() async {
    final list = await _repository.getAllUserTransactionHistory();
    return list;
  }
}
