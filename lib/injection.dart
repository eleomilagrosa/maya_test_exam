import 'package:get_it/get_it.dart';
import 'package:maya_test_exam/data/datasource/send_transaction_remote_data_source.dart';
import 'package:maya_test_exam/data/datasource/user_remote_data_source.dart';
import 'package:maya_test_exam/data/repository/send_transaction_repository_impl.dart';
import 'package:maya_test_exam/data/repository/user_repository_impl.dart';
import 'package:maya_test_exam/domain/repositories/send_transaction_repository.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';
import 'package:maya_test_exam/domain/usecase/get_user_details.dart';
import 'package:maya_test_exam/domain/usecase/send_money_transaction.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';

final locator = GetIt.instance;

void init() {
  // DataSources and Repositories
  final userDataSource = UserRemoteDataSourceImpl();
  locator.registerLazySingleton<UserRemoteDataSource>(
    () => userDataSource,
  );
  final userRepository = UserRepositoryImpl(locator());
  locator.registerLazySingleton<UserRepository>(
    () => userRepository,
  );

  final transactionDataSource = SendTransactionRemoteDataSourceImpl();
  locator.registerLazySingleton<SendTransactionRemoteDataSource>(
    () => transactionDataSource,
  );
  final transactionRepository =
      SendTransactionRepositoryImpl(locator(), locator());
  locator.registerLazySingleton<SendTransactionRepository>(
    () => transactionRepository,
  );

  // Use cases
  final getTransactionHistory = GetTransactionHistory(locator());
  locator.registerLazySingleton(
    () => getTransactionHistory,
  );
  final getUserDetails = GetUserDetails(locator());
  locator.registerLazySingleton(
    () => getUserDetails,
  );
  final sendMoneyTransaction = SendMoneyTransaction(locator());
  locator.registerLazySingleton(
    () => sendMoneyTransaction,
  );

  // BLoCs
  // final sendTransactionBloc =
  //     SendTransactionBloc(sendMoneyTransaction: locator());
  // locator.registerLazySingleton(
  //   () => sendTransactionBloc,
  // );

  final userBlock =
      UserBloc(getUserDetails: locator(), getTransactionHistory: locator());
  locator.registerLazySingleton(
    () => userBlock,
  );
}
