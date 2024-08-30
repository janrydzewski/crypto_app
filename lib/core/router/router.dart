import 'package:crypto_app/core/router/routes.dart';
import 'package:crypto_app/core/router/routes/routes_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: RoutesK.home,
    routes: routes,
    debugLogDiagnostics: true);
