import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction_model.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(int userId);
  UserEntity? currentUser;
  List<TransactionModel> addedTransactions = [];
}
