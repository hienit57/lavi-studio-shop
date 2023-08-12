import 'package:lavi_studio_shop/common/global/index.dart';
import 'package:lavi_studio_shop/core/routes/index.dart';
import 'package:lavi_studio_shop/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:lavi_studio_shop/features/home/presentation/pages/home_page.dart';
import 'package:lavi_studio_shop/features/login/index.dart';
import 'package:flutter/material.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final inAppNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter routerConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Dashboard.routeName,
  redirect: (context, state) async {
    final accessToken =
        (await DataUserLoginCachedClient.instance.getData())?.token;

    if (accessToken == null) {
      return HomePage.routeName;
      //return LoginPage.routeName;
    }
    return state.path;
  },
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: inAppNavigatorKey,
      builder: (context, state, child) {
        return GlobalPage(child: child);
      },
      routes: [
        GoRoute(
            parentNavigatorKey: inAppNavigatorKey,
            path: HomePage.routeName,
            pageBuilder: ((context, state) => const NoTransitionPage(
                  child: HomePage(),
                )),
            routes: [
              GoRoute(
                parentNavigatorKey: inAppNavigatorKey,
                path: pathFormat(HomePage.routeName),
                pageBuilder: ((context, state) => const NoTransitionPage(
                      child: HomePage(),
                    )),
              ),
            ]),
      ],
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: LoginPage.routeName,
      pageBuilder: ((context, state) => const NoTransitionPage(
            child: LoginPage(),
          )),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: ForgotPasswordPage.routeName,
      pageBuilder: ((context, state) => const NoTransitionPage(
            child: ForgotPasswordPage(),
          )),
    ),
  ],
);

String pathFormat(String path) {
  return path.replaceAll('/', '');
}
