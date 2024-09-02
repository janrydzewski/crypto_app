import 'package:crypto_app/core/addons/global.dart';
import 'package:crypto_app/core/router/router.dart';
import 'package:crypto_app/core/router/routes.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/pages/details_page.dart';
import 'package:crypto_app/features/home_features/home/presentation/pages/home_page.dart';
import 'package:crypto_app/features/home_features/list/presentation/pages/list_page.dart';
import 'package:crypto_app/features/other_features/root/presentation/pages/root_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final homeNavigatorKey = GlobalKey<NavigatorState>();
final listNavigatorKey = GlobalKey<NavigatorState>();

final StatefulShellRoute shellRoutes = StatefulShellRoute.indexedStack(
  parentNavigatorKey: rootNavigatorKey,
  builder: (context, state, navigationShell) {
    Global.scrollController ??= ScrollController();
    return RootPage(
      navigationShell: navigationShell,
    );
  },
  branches: [
    homeBranches,
    listBranches,
  ],
);

final StatefulShellBranch homeBranches =
    StatefulShellBranch(navigatorKey: homeNavigatorKey, routes: [
  GoRoute(
    path: RoutesK.home,
    builder: (context, state) => const HomePage(),
  ),
]);

final StatefulShellBranch listBranches =
    StatefulShellBranch(navigatorKey: listNavigatorKey, routes: [
  GoRoute(
      path: RoutesK.list,
      builder: (context, state) => const ListPage(),
      routes: [
        GoRoute(
          path: RoutesK.details,
          builder: (context, state) => DetailsPage(
            cryptoId: state.pathParameters['id'] as String,
          ),
        ),
      ]),
]);
