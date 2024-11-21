class User {
  int id;
  String name;
  double balance;

  User({
    required this.id,
    required this.name,
    required this.balance,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        balance: json["balance"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "balance": balance,
      };
}
