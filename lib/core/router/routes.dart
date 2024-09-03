import 'package:crypto_app/core/constants/constants.dart';

// File to store all routes
class RoutesK extends Constants {
  //SECTION - [APP]
  static const home = "/";
  static const cryptoList = "/cryptoList";
  static const details = "details/:id";
  //!SECTION

  //SECTION - [SHARED]
  static const loading = "/loading";
  static const error = "/error";
  //!SECTION
}
