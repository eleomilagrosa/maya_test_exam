import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/datasource/transaction_remote_data_source.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/transaction_repository.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';

class TransactionRepositoryImpl extends TransactionRepository {
  TransactionRepositoryImpl(this.dataSource, this.userRepository);
  final TransactionRemoteDataSource dataSource;
  final UserRepository userRepository;

  @override
  Future<Either<Failure, TransactionResult?>> sendMoneyTransaction(
      {required double amount}) async {
    try {
      final result = await dataSource.sendMoneyTransaction(
        amount: amount,
        user: userRepository.currentUser!,
      );
      if(result?.transaction != null){
        addedTransactions.add(result!.transaction);
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
