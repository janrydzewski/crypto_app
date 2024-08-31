import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:injectable/injectable.dart';

abstract class DetailsDatasource {
  Future<CryptoDetailsEntity> getCryptoDetails(String cryptoId);
}

@LazySingleton(as: DetailsDatasource)
class DetailsDatasourceImpl implements DetailsDatasource {
  final DioFactory dioFactory;

  DetailsDatasourceImpl({required this.dioFactory});

  @override
  Future<CryptoDetailsEntity> getCryptoDetails(String cryptoId) async {
    try {
      final response =
          await dioFactory.get("${ApiRoutesK.cryptoDetails}/$cryptoId");
      return CryptoDetailsEntity.fromJson(response);
    } catch (e, st) {
      throw dioFactory.defaultException(e, st);
    }
  }
}
