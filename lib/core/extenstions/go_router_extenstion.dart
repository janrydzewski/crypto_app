import 'package:crypto_app/core/router/routes.dart';
import 'package:go_router/go_router.dart';

// Extension to get the current location
extension GoRouterExtension on GoRouter {
  String location() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }

  // Function to check if the scroll controller should be added
  bool get addScrollController {
    if (location() == RoutesK.cryptoList) {
      return true;
    }
    return false;
  }

  // Function to check if the currency change should be displayed
  bool get displayCurrencyChange {
    if (location() == RoutesK.home || location() == RoutesK.cryptoList) {
      return true;
    }
    return false;
  }
}
