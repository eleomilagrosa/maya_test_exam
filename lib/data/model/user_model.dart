import 'package:maya_test_exam/domain/entity/user_entity.dart';

class UserModel extends UserEntity{

  UserModel({
    required super.id,
    required super.name,
    required super.balance,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
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
