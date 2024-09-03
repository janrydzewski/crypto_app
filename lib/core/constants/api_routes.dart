import 'package:crypto_app/core/constants/constants.dart';

class ApiRoutesK extends Constants {
  static const baseUrl = "https://api.coingecko.com/api/v3";

  static const trendingCryptoList = "/search/trending";
  static const cryptoList = "/coins/markets";
  static const cryptoDetails = "/coins";
}
