import 'package:maya_test_exam/domain/entity/transaction_entity.dart';

class TransactionModel extends TransactionEntity{

  TransactionModel({
    super.id,
    super.amount,
    super.balance,
    super.userId,
    super.previousBalance,
    super.createdAt,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
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
