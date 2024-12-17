import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/datasource/transaction_history_remote_data_source.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/domain/repositories/transaction_history_repository.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';

class TransactionHistoryRepositoryImpl extends TransactionHistoryRepository {
  TransactionHistoryRepositoryImpl(this.dataSource, this.userRepository);
  final TransactionHistoryRemoteDataSource dataSource;
  final UserRepository userRepository;

  @override
  Future<Either<Failure, List<Transaction>>>
      getAllUserTransactionHistory() async {
    try {
      final result = await dataSource
          .getAllUserTransactionHistory(userRepository.currentUser!.id);
      result.addAll(userRepository.addedTransactions);
      result.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
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
