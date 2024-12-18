import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/datasource/send_transaction_remote_data_source.dart';
import 'package:maya_test_exam/domain/entity/user_entity.dart';
import 'package:maya_test_exam/domain/repositories/send_transaction_repository.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';

class SendTransactionRepositoryImpl extends SendTransactionRepository {
  SendTransactionRepositoryImpl(this.dataSource, this.userRepository);
  final SendTransactionRemoteDataSource dataSource;
  final UserRepository userRepository;

  @override
  Future<Either<Failure, SendTransactionResult?>> sendMoneyTransaction(
      {required double amount}) async {
    try {
      final result = await dataSource.sendMoneyTransaction(
        amount: amount,
        user: userRepository.currentUser!,
      );
      if (result?.transaction != null) {
        userRepository.addedTransactions.add(result!.transaction!);
        userRepository.currentUser = result.user;
      }
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data['message'].toString() ??
              'Error occurred Please try again',
        ),
      );
    }
  }
}
