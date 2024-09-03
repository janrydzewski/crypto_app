import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/crypto_list/data/datasources/crypto_list_datasource.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_list_param_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'crypto_list_datasource_test.mocks.dart';

@GenerateMocks([
  DioFactory,
])
void main() {
  late MockDioFactory mockDioFactory;

  setUpAll(() {
    mockDioFactory = MockDioFactory();
  });

  group('CryptoListDatasourceImpl', () {
    late CryptoListDatasourceImpl datasource;

    setUp(() {
      datasource = CryptoListDatasourceImpl(dioFactory: mockDioFactory);
    });

    test('getCryptoList returns List<CryptoEntity> on successful response',
        () async {
      final cryptoListParam =
          CryptoListParamEntity(pageKey: 0, currencyCode: 'usd');
      final response = [
        {
          "id": "bitcoin",
          "symbol": "btc",
          "name": "Bitcoin",
          "image":
              "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
          "current_price": 69840,
          "price_change_percentage_24h": 10.0,
        },
        {
          "id": "ethereum",
          "symbol": "eth",
          "name": "Ethereum",
          "image":
              "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
          "current_price": 4500,
          "price_change_percentage_24h": 10.0,
        },
      ];
      final expectedList =
          response.map((e) => CryptoEntity.fromJson(e)).toList();

      when(mockDioFactory.getList(ApiRoutesK.cryptoList,
              queryParameters: cryptoListParam.toJson()))
          .thenAnswer((_) async => response);

      final result = await datasource.getCryptoList(cryptoListParam);

      expect(result, equals(expectedList));
      verify(mockDioFactory.getList(ApiRoutesK.cryptoList,
              queryParameters: cryptoListParam.toJson()))
          .called(1);
    });

    test(
        'getTrendingCryptoList returns List<TrendingCryptoEntity> on successful response',
        () async {
      final response = {
        "coins": [
          {
            "item": {
              "id": "quickswap",
              "name": "Quickswap",
              "symbol": "QUICK",
              "large":
                  "https://coin-images.coingecko.com/coins/images/25393/large/quickswap.png?1696524525",
              "data": {
                "price": 0.03672310363860481,
                "price_change_percentage_24h": {
                  "usd": 3.711271840661922,
                },
              }
            }
          },
          {
            "item": {
              "id": "mantra-dao",
              "name": "MANTRA",
              "symbol": "OM",
              "large":
                  "https://coin-images.coingecko.com/coins/images/12151/large/OM_Token.png?1696511991",
              "data": {
                "price": 0.9985081545451808,
                "price_change_percentage_24h": {
                  "usd": 9.25543580800013,
                },
              }
            }
          },
        ]
      };
      final expectedList = (response['coins'] as List<dynamic>)
          .map<TrendingCryptoEntity>(
              (coin) => TrendingCryptoEntity.fromJson(coin['item']))
          .toList();

      when(mockDioFactory.get(ApiRoutesK.trendingCryptoList))
          .thenAnswer((_) async => response);

      final result = await datasource.getTrendingCryptoList();

      expect(result, equals(expectedList));
      verify(mockDioFactory.get(ApiRoutesK.trendingCryptoList)).called(1);
    });
  });
}
