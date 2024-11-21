import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:dartz/dartz.dart';

abstract class TransactionRepository {
  Future<Either<Failure, TransactionResult?>> sendMoneyTransaction(
      {required double amount});
  List<Transaction> addedTransactions = [];
}
