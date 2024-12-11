import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/domain/models/rich_text_item/rich_text_item.dart';
import 'package:todo/presentation/application/screens/history/history_screen.dart';

import '../../core/constants/app_strings.dart';
import '../../core/global_config.dart';
import '../../presentation/application/screens/home/home_screen.dart';
import '../../presentation/splash/entry.dart';
import '../../presentation/splash/splash.dart';

class AppRoutes {
  static const String entryScreen = 'entry';
  static const String splashScreen = 'splash';
  static const String home = 'home';
  static const String history = 'history';
}

GoRouter? globalGoRouter;

GoRouter getGoRouter() {
  return globalGoRouter ??= AppRouteConfig.router;
}

class AppRouteConfig {
  static final GoRouter router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.entryScreen,
        builder: (BuildContext context, GoRouterState state) {
          entryFunction();
          return const EntryScreen();
        },
        routes: [
          GoRoute(
            path: AppRoutes.splashScreen,
            name: AppRoutes.splashScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const SplashScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/${AppRoutes.home}',
        name: AppRoutes.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
            path: '/${AppRoutes.history}',
            name: AppRoutes.history,
            builder: (BuildContext context, GoRouterState state) {
              return const HistoryScreen(
              );
            },
          ),
        ],
      ),
    ],
  );

  static Future<void> entryFunction() async {
    return Future.delayed(const Duration(seconds: 2), () {
      final bool isAppPreviouslyRan = GlobalConfig.storageService
          .getBoolValue(AppStrings.IS_APP_PREVIOUSLY_RAN);

      if (isAppPreviouslyRan) {
        AppRouteConfig.router.goNamed(AppRoutes.home);
      } else {
        AppRouteConfig.router.goNamed(AppRoutes.splashScreen);
      }
    });
  }

  static void clearAndNavigate(String path) {
    while (getGoRouter().canPop() == true) {
      getGoRouter().pop();
    }
    getGoRouter().pushReplacementNamed(path);
  }
}
