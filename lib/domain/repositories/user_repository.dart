import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(int userId);
  User? currentUser;
  List<Transaction> addedTransactions = [];
}
