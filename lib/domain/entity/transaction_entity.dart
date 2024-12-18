abstract class TransactionEntity {
  int? id;
  double? amount;
  double? balance;
  int? userId;
  double? previousBalance;
  DateTime? createdAt;

  TransactionEntity({
    this.id,
    this.amount,
    this.balance,
    this.userId,
    this.previousBalance,
    this.createdAt,
  });
}