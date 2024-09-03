import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_list_param_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:injectable/injectable.dart';

abstract class CryptoListDatasource {
  // Function to get crypto list - List<CryptoEntity>
  Future<List<CryptoEntity>> getCryptoList(
      CryptoListParamEntity cryptoListParam);
  // Function to get trending crypto list - List<TrendingCryptoEntity>
  Future<List<TrendingCryptoEntity>> getTrendingCryptoList();
}

@LazySingleton(as: CryptoListDatasource)
class CryptoListDatasourceImpl implements CryptoListDatasource {
  final DioFactory dioFactory;

  CryptoListDatasourceImpl({required this.dioFactory});

  // Implementation of the function to get crypto list
  @override
  Future<List<CryptoEntity>> getCryptoList(
      CryptoListParamEntity cryptoListParam) async {
    try {
      final response = await dioFactory.getList(ApiRoutesK.cryptoList,
          queryParameters: cryptoListParam.toJson());
      return (response).map((e) => CryptoEntity.fromJson(e)).toList();
    } catch (e, st) {
      throw dioFactory.defaultException(e, st);
    }
  }

  // Implementation of the function to get trending crypto list
  @override
  Future<List<TrendingCryptoEntity>> getTrendingCryptoList() async {
    try {
      final response = await dioFactory.get(ApiRoutesK.trendingCryptoList);
      final List<dynamic> list = response['coins'];
      return list
          .map((coin) => TrendingCryptoEntity.fromJson(coin['item']))
          .toList();
    } catch (e, st) {
      throw dioFactory.defaultException(e, st);
    }
  }
}
