import 'package:crypto_app/core/router/routes.dart';
import 'package:crypto_app/core/router/routes/shell_routes.dart';
import 'package:crypto_app/features/other_features/loading/presentation/pages/loading_page.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> routes = [
  GoRoute(
    path: RoutesK.loading,
    builder: (context, state) => const LoadingPage(),
  ),
  shellRoutes,
];
