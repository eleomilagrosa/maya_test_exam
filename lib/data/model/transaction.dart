class Transaction {
  int id;
  int amount;
  int balance;
  int userId;
  int previousBalance;
  DateTime? createdAt;

  Transaction({
    required this.id,
    required this.amount,
    required this.balance,
    required this.userId,
    required this.previousBalance,
    required this.createdAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    id: json["id"],
    amount: json["amount"],
    balance: json["balance"],
    userId: json["userId"],
    previousBalance: json["previous_balance"],
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