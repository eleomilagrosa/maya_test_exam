import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/domain/entity/transaction_entity.dart';

abstract class TransactionHistoryRepository {
  Future<Either<Failure, List<TransactionEntity>>> getAllUserTransactionHistory();
}
