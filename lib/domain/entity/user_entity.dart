import 'package:maya_test_exam/data/model/transaction_model.dart';

abstract class UserEntity {
  int id;
  String name;
  double balance;

  UserEntity({
    required this.id,
    required this.name,
    required this.balance,
  });
}

class SendTransactionResult {
  SendTransactionResult({
    required this.transaction,
    required this.user,
  });

  TransactionModel? transaction;
  UserEntity user;
}