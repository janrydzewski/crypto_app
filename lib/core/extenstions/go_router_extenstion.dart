import 'package:crypto_app/core/router/routes.dart';
import 'package:go_router/go_router.dart';

extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }

  bool get addScrollController {
    if (location() == RoutesK.cryptoList) {
      return true;
    }
    return false;
  }
}
