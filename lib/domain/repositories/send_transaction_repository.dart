import 'package:maya_test_exam/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';

abstract class SendTransactionRepository {
  Future<Either<Failure, SendTransactionResult?>> sendMoneyTransaction(
      {required double amount});
}
