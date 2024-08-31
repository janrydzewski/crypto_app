import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:injectable/injectable.dart';

abstract class ListDatasource {
  Future<List<CryptoEntity>> getCryptoList();
}

@LazySingleton(as: ListDatasource)
class ListDatasourceImpl implements ListDatasource {
  final DioFactory dioFactory;

  ListDatasourceImpl({required this.dioFactory});

  @override
  Future<List<CryptoEntity>> getCryptoList() async {
    try {
      final response =
          await dioFactory.getList(ApiRoutesK.cryptoList, queryParameters: {
        'vs_currency': 'usd',
      });
      return (response).map((e) => CryptoEntity.fromJson(e)).toList();
    } catch (e, st) {
      throw dioFactory.defaultException(e, st);
    }
  }
}
