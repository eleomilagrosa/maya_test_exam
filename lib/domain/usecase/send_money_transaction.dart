import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/transaction_repository.dart';

class SendMoneyTransaction {
  SendMoneyTransaction(this._repository);

  final TransactionRepository _repository;

  Future<Either<Failure, TransactionResult?>> call(
      {required double amount}) async {
    final list =
        await _repository.sendMoneyTransaction(amount: amount);
    return list;
  }
}
