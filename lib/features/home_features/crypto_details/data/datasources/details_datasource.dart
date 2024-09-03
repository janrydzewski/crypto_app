import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:crypto_app/core/network/dio_factory.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/chart_data_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:injectable/injectable.dart';

abstract class DetailsDatasource {
  // Function to get crypto details - CryptoDetailsEntity
  Future<CryptoDetailsEntity> getCryptoDetails(String cryptoId);
  // Function to get crypto chart data - PricesEntity
  Future<PricesEntity> getCryptoChartData(
    String cryptoId,
    ChartDataEntity chartDataEntity,
  );
}

@LazySingleton(as: DetailsDatasource)
class DetailsDatasourceImpl implements DetailsDatasource {
  final DioFactory dioFactory;

  DetailsDatasourceImpl({required this.dioFactory});

  //Implementation of the function to get crypto details
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

  //Implementation of the function to get crypto chart data
  @override
  Future<PricesEntity> getCryptoChartData(
      String cryptoId, ChartDataEntity chartDataEntity) async {
    try {
      final response = await dioFactory.get(
          "${ApiRoutesK.cryptoDetails}/$cryptoId/market_chart",
          queryParameters: chartDataEntity.toJson());
      return PricesEntity.fromJson(response);
    } catch (e, st) {
      throw dioFactory.defaultException(e, st);
    }
  }
}
