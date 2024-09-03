import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/data/datasources/details_datasource.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/chart_data_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class DetailsRepository {
  Future<Either<Failure, CryptoDetailsEntity>> getCryptoDetails(
      String cryptoId);
  Future<Either<Failure, PricesEntity>> getCryptoChartData(
      String cryptoId, ChartDataEntity chartDataEntity);
}

@LazySingleton(as: DetailsRepository)
class DetailsRepositoryImpl extends DetailsRepository {
  final DetailsDatasource detailsDatasource;

  DetailsRepositoryImpl({required this.detailsDatasource});

  @override
  Future<Either<Failure, CryptoDetailsEntity>> getCryptoDetails(
      String cryptoId) async {
    try {
      final response = await detailsDatasource.getCryptoDetails(cryptoId);
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, PricesEntity>> getCryptoChartData(
      String cryptoId, ChartDataEntity chartDataEntity) async {
    try {
      final response =
          await detailsDatasource.getCryptoChartData(cryptoId, chartDataEntity);
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
