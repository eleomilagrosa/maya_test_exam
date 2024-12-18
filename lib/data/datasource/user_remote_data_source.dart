import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/api_constants.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/data/model/user_model.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(int userId);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio = Dio(BaseOptions(
    baseUrl: APIConstants.host,
  ));

  @override
  Future<UserModel> getUser(int userId) async {
    try {
      final response = await dio.get('${APIConstants.user}/$userId');
      if (response.isSuccess) {
        return UserModel.fromJson(response.data);
      }
      throw DatabaseException("No User Found");
    } catch (e) {
      rethrow;
    }
  }
}
