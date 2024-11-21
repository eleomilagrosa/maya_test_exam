import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maya_test_exam/common/themes.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';
import 'package:maya_test_exam/utilities/go_router_init.dart';
import 'package:maya_test_exam/utilities/logger.dart';
import './injection.dart' as di;

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () {
        WidgetsFlutterBinding.ensureInitialized();
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<UserBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Maya Test Exam',
        theme: themeLightFn,
        themeMode: ThemeMode.system,
        routerConfig: routerInitialize,
      ),
    );
  }
}
