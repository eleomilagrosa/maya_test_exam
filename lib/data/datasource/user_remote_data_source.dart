import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/api_constants.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

abstract class UserRemoteDataSource {
  Future<User> getUser(int userId);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio = Dio(BaseOptions(
    baseUrl: APIConstants.host,
  ));

  @override
  Future<User> getUser(int userId) async {
    try {
      final response = await dio.get('${APIConstants.user}/$userId');
      if (response.isSuccess) {
        return User.fromJson(response.data);
      }
      throw DatabaseException("No User Found");
    } catch (e) {
      rethrow;
    }
  }
}
