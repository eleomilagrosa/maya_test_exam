import 'package:get_it/get_it.dart';
import 'package:maya_test_exam/data/datasource/transaction_remote_data_source.dart';
import 'package:maya_test_exam/data/datasource/user_remote_data_source.dart';
import 'package:maya_test_exam/data/repository/transaction_repository_impl.dart';
import 'package:maya_test_exam/data/repository/user_repository_impl.dart';
import 'package:maya_test_exam/domain/repositories/transaction_repository.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';
import 'package:maya_test_exam/domain/usecase/get_transaction_history.dart';
import 'package:maya_test_exam/domain/usecase/get_user_details.dart';
import 'package:maya_test_exam/domain/usecase/send_money_transaction.dart';
import 'package:maya_test_exam/presentation/bloc/transaction/transaction_bloc.dart';
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

  final transactionDataSource = TransactionRemoteDataSourceImpl();
  locator.registerLazySingleton<TransactionRemoteDataSource>(
        () => transactionDataSource,
  );
  final transactionRepository = TransactionRepositoryImpl(locator(), locator());
  locator.registerLazySingleton<TransactionRepository>(
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
  final transactionBloc = TransactionBloc(
      sendMoneyTransaction: locator()
  );

  locator.registerLazySingleton(
        () => transactionBloc,
  );

  final userBlock = UserBloc(getUserDetails: locator(), getTransactionHistory: locator());
  locator.registerLazySingleton(
        () => userBlock,
  );

}
