import 'package:maya_test_exam/data/model/user.dart';

class Transaction {
  int? id;
  double? amount;
  double? balance;
  int? userId;
  double? previousBalance;
  DateTime? createdAt;

  Transaction({
    this.id,
    this.amount,
    this.balance,
    this.userId,
    this.previousBalance,
    this.createdAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        amount: json["amount"]?.toDouble(),
        balance: json["balance"]?.toDouble(),
        userId: json["userId"],
        previousBalance: json["previous_balance"]?.toDouble(),
        createdAt: DateTime.tryParse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "amount": amount,
        "balance": balance,
        "userId": userId,
        "previous_balance": previousBalance,
        "created_at": createdAt?.toIso8601String(),
      };
}

class SendTransactionResult {
  SendTransactionResult({
    required this.transaction,
    required this.user,
  });

  Transaction? transaction;
  User user;
}
