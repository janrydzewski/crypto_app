import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/crypto_details/data/datasources/details_datasource.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/chart_data_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'details_datasource_test.mocks.dart';

@GenerateMocks([
  DioFactory,
])
void main() {
  late MockDioFactory mockDioFactory;

  setUpAll(() {
    mockDioFactory = MockDioFactory();
  });

  group('DetailsDatasourceImpl', () {
    late DetailsDatasourceImpl datasource;

    setUp(() {
      datasource = DetailsDatasourceImpl(dioFactory: mockDioFactory);
    });

    test('getCryptoDetails returns CryptoDetailsEntity on successful response',
        () async {
      const cryptoId = "bitcoin";
      final response = {
        "id": "bitcoin",
        "symbol": "btc",
        "name": "Bitcoin",
        "image": {
          "thumb":
              "https://assets.coingecko.com/coins/images/1/thumb/bitcoin.png?1696501400",
          "small":
              "https://assets.coingecko.com/coins/images/1/small/bitcoin.png?1696501400",
          "large":
              "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400"
        },
        "market_data": {
          "current_price": {
            "aed": 256486,
            "ars": 60101017,
            "aud": 106125,
            "bch": 101.037,
            "bdt": 7654380,
            "bhd": 26296,
            "bmd": 69840,
            "bnb": 118.734,
            "brl": 353813,
            "btc": 1,
            "cad": 94915,
            "chf": 62987,
            "clp": 65634817,
            "cny": 505108,
            "czk": 1631473,
            "dkk": 480664,
            "dot": 8003,
            "eos": 67198,
            "eth": 20.442233,
            "eur": 64375,
            "gbp": 55262,
            "gel": 187170,
            "hkd": 546840,
            "huf": 25146606,
            "idr": 1109593229,
            "ils": 261823,
            "inr": 5817429,
            "jpy": 10588024,
            "krw": 94372079,
            "kwd": 21461,
            "lkr": 20854981,
            "ltc": 674.295,
            "mmk": 146457199,
            "mxn": 1149112,
            "myr": 331563,
            "ngn": 90416785,
            "nok": 749336,
            "nzd": 116128,
            "php": 3952220,
            "pkr": 19383322,
            "pln": 275823,
            "rub": 6460642,
            "sar": 261970,
            "sek": 745676,
            "sgd": 94242,
            "thb": 2557468,
            "try": 2239859,
            "twd": 2243679,
            "uah": 2708502,
            "usd": 69840,
            "vef": 6993.03,
            "vnd": 1743591863,
            "xag": 2540.87,
            "xau": 29.98,
            "xdr": 52675,
            "xlm": 535693,
            "xrp": 116020,
            "yfi": 8.26583,
            "zar": 1305790,
            "bits": 1000052,
            "link": 3916,
            "sats": 100005210
          },
          "price_change_24h": 1619,
          "price_change_percentage_24h": 2.37311,
        },
      };
      final expectedEntity = CryptoDetailsEntity.fromJson(response);

      when(mockDioFactory.get("${ApiRoutesK.cryptoDetails}/$cryptoId"))
          .thenAnswer((_) async => response);

      final result = await datasource.getCryptoDetails(cryptoId);

      expect(result, equals(expectedEntity));
      verify(mockDioFactory.get("${ApiRoutesK.cryptoDetails}/$cryptoId"))
          .called(1);
    });

    test('getCryptoChartData returns PricesEntity on successful response',
        () async {
      const cryptoId = "bitcoin";
      final chartDataEntity = ChartDataEntity(days: 1, currencyCode: "usd");
      final response = {
        "prices": [
          [1725274903683, 58498.52007933332],
          [1725275175021, 58401.44650650678],
          [1725275612084, 58368.849059972636],
          [1725275748817, 58410.307545954296],
          [1725276053884, 58504.546268767874],
          [1725276376229, 58572.42722616422],
          [1725276754112, 58647.2557272321],
          [1725276923890, 58608.29258922131],
          [1725277256072, 58523.154915579435],
          [1725277531257, 58446.40733935201],
          [1725277868358, 58449.20508418726],
          [1725278185949, 58402.83520725279],
          [1725278527405, 58394.735858325235],
          [1725278743145, 58465.33577646632],
          [1725279067365, 58460.48372066507],
          [1725279396129, 58373.66327255791],
          [1725279688204, 58361.898572657774],
          [1725279936373, 58385.44619667384],
          [1725280280791, 58401.602517858984],
          [1725280556638, 58327.740125001306],
          [1725280908847, 58343.53127914413],
          [1725281144364, 58283.008893437305],
          [1725281455122, 58352.24268674847],
          [1725281723466, 58421.52288562188],
          [1725282107819, 58405.624678946486],
          [1725282382313, 58352.578455518575],
          [1725282700297, 58389.63264298334],
        ]
      };
      final expectedEntity = PricesEntity.fromJson(response);

      when(mockDioFactory.get(
              "${ApiRoutesK.cryptoDetails}/$cryptoId/market_chart",
              queryParameters: chartDataEntity.toJson()))
          .thenAnswer((_) async => response);

      final result =
          await datasource.getCryptoChartData(cryptoId, chartDataEntity);

      expect(result, equals(expectedEntity));
      verify(mockDioFactory.get(
              "${ApiRoutesK.cryptoDetails}/$cryptoId/market_chart",
              queryParameters: chartDataEntity.toJson()))
          .called(1);
    });
  });
}
