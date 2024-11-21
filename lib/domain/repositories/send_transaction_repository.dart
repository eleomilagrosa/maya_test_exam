import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:dartz/dartz.dart';

abstract class SendTransactionRepository {
  Future<Either<Failure, SendTransactionResult?>> sendMoneyTransaction(
      {required double amount});
}
