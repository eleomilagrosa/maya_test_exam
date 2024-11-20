import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maya_test_exam/common/themes.dart';
import 'package:maya_test_exam/presentation/cubit/theme/theme_cubit.dart';
import 'package:maya_test_exam/utilities/go_router_init.dart';
import 'package:maya_test_exam/utilities/logger.dart';
import './injection.dart' as di;

void main() {
  logger.runLogging(
        () => runZonedGuarded(
          () {
        WidgetsFlutterBinding.ensureInitialized();
        // Bloc.transformer = bloc_concurrency.sequential();
        // Bloc.observer = const AppBlocObserver();
        di.init();
        runApp(const MyApp());
      },
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => di.locator<AuthenticatorWatcherBloc>()),
        // BlocProvider(create: (_) => di.locator<SignInFormBloc>()),
        BlocProvider(create: (_) => di.locator<ThemeCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'flutter bloc clean architecture',
        theme: themeLightFn,
        themeMode: ThemeMode.system,
        routerConfig: routerInitialize,
      ),
    );
  }
}