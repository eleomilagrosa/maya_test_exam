import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/api_constants.dart';
import 'package:maya_test_exam/data/model/transaction_model.dart';

abstract class TransactionHistoryRemoteDataSource {
  Future<List<TransactionModel>> getAllUserTransactionHistory(int userId);
}

class TransactionHistoryRemoteDataSourceImpl
    implements TransactionHistoryRemoteDataSource {
  final Dio dio = Dio(BaseOptions(
    baseUrl: APIConstants.host,
  ));

  @override
  Future<List<TransactionModel>> getAllUserTransactionHistory(int userId) async {
    try {
      final response =
          await dio.get(APIConstants.transaction, queryParameters: {
        'userId': userId,
      });
      final list = (response.data as List?)
          ?.map((e) => e as Map<String, dynamic>)
          .map<TransactionModel>(TransactionModel.fromJson)
          .toList();

      return list ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
