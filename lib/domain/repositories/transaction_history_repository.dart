import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';

abstract class TransactionHistoryRepository {
  Future<Either<Failure, List<Transaction>>> getAllUserTransactionHistory();
}