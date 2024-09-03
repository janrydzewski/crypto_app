import 'package:crypto_app/core/constants/constants.dart';

// Global class to store api routes
class ApiRoutesK extends Constants {
  //ANCHOR - General
  static const baseUrl = "https://api.coingecko.com/api/v3";

  //ANCHOR - Routes
  static const trendingCryptoList = "/search/trending";
  static const cryptoList = "/coins/markets";
  static const cryptoDetails = "/coins";
}
