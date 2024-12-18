import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';
import 'package:maya_test_exam/domain/repositories/send_transaction_repository.dart';

class SendMoneyTransaction {
  SendMoneyTransaction(this._repository);

  final SendTransactionRepository _repository;

  Future<Either<Failure, SendTransactionResult?>> call(
      {required double amount}) async {
    final list = await _repository.sendMoneyTransaction(amount: amount);
    return list;
  }
}
