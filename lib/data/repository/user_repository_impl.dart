import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:maya_test_exam/common/exception.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/datasource/user_remote_data_source.dart';
import 'package:maya_test_exam/data/model/transaction.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.dataSource);
  final UserRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Transaction>>>
      getAllUserTransactionHistory() async {
    try {
      final result =
          await dataSource.getAllUserTransactionHistory(currentUser!.id);
      result.addAll(addedTransactions);
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

  @override
  Future<Either<Failure, User>> getUser(int userId) async {
    try {
      final result = await dataSource.getUser(userId);
      currentUser = result;
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DatabaseException catch (dbe) {
      return Left(
        DatabaseFailure(dbe.message),
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
