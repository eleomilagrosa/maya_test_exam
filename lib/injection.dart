import 'package:get_it/get_it.dart';
import 'package:maya_test_exam/presentation/cubit/theme/theme_cubit.dart';

final locator = GetIt.instance;

void init() {
  //TODO: Data sources
  // final authRemoteDataSource = AuthenticationRemoteDataSourceImpl();
  // locator.registerLazySingleton<AuthenticationRemoteDataSource>(
  //       () => authRemoteDataSource,
  // );
  //
  // // Repositories
  // final authRepository = AuthenticationRepositoryImpl(locator());
  // locator.registerLazySingleton<AuthenticationRepository>(
  //       () => authRepository,
  // );
  //
  // // Use cases
  // final signIn = SignIn(locator());
  // locator.registerLazySingleton(
  //       () => signIn,
  // );
  //
  // //TODO:  BLoCs
  // final authenticatorWatcherBloc = AuthenticatorWatcherBloc();
  // locator.registerLazySingleton(
  //       () => authenticatorWatcherBloc,
  // );
  //
  // final signInFormBloc = SignInFormBloc(locator());
  // locator.registerLazySingleton(
  //       () => signInFormBloc,
  // );

  final themeCubit = ThemeCubit();
  locator.registerLazySingleton(
        () => themeCubit,
  );
}