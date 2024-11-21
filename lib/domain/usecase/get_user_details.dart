import 'package:dartz/dartz.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';

class GetUserDetails {
  GetUserDetails(this._repository);

  final UserRepository _repository;

  Future<Either<Failure, User>> call(int id) async {
    final list = await _repository.getUser(id);
    return list;
  }
}
