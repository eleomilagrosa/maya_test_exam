import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/api_constants.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/utilities/extensions/app_extensions.dart';

abstract class SendTransactionRemoteDataSource {
  Future<SendTransactionResult?> sendMoneyTransaction(
      {required double amount, required User user});
}

class SendTransactionRemoteDataSourceImpl
    implements SendTransactionRemoteDataSource {
  final Dio dio = Dio(BaseOptions(
    baseUrl: APIConstants.host,
  ));

  @override
  Future<SendTransactionResult?> sendMoneyTransaction({
    required double amount,
    required User user,
  }) async {
    try {
      double newBalance = user.balance - amount;
      final response = await dio.post(APIConstants.transaction,
          data: Transaction(
                  amount: amount,
                  balance: newBalance,
                  userId: user.id,
                  previousBalance: user.balance,
                  createdAt: DateTime.now())
              .toJson());
      if (response.isSuccess) {
        user.balance = newBalance;
        SendTransactionResult transactionResult = SendTransactionResult(
          transaction: Transaction.fromJson(response.data),
          user: user,
        );
        return transactionResult;
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}
