
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maya_test_exam/common/routes.dart';
import 'package:maya_test_exam/presentation/page/error/error_screen.dart';
import 'package:maya_test_exam/presentation/page/home/home_screen.dart';
import 'package:maya_test_exam/presentation/page/home/send_money/send_money_screen.dart';
import 'package:maya_test_exam/presentation/page/home/transaction_history/transaction_history_screen.dart';
import 'package:maya_test_exam/utilities/logger.dart';

GoRouter routerInitialize = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: AppRoutes.HOME_ROUTE_NAME,
      path: AppRoutes.HOME_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          name: AppRoutes.SEND_MONEY_ROUTE_NAME,
          path: AppRoutes.SEND_MONEY_ROUTE_PATH,
          builder: (BuildContext context, GoRouterState state) {
            return const SendMoneyScreen();
          },
        ),
        GoRoute(
          name: AppRoutes.TRANSACTION_HISTORY_ROUTE_NAME,
          path: AppRoutes.TRANSACTION_HISTORY_ROUTE_PATH,
          builder: (BuildContext context, GoRouterState state) {
            return const TransactionHistoryScreen();
          },
        ),
      ]
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');
    return null;
  },
);