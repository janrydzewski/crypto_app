import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/chart_data_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/repositories/details_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetCryptoPricesUsecase {
  final DetailsRepository detailsRepository;

  const GetCryptoPricesUsecase({required this.detailsRepository});

  Future<Either<Failure, PricesEntity>> call(ChartDataEntity chartDataEntity,
      {String cryptoId = "bitcoin"}) async {
    return await detailsRepository.getCryptoChartData(
        cryptoId, chartDataEntity);
  }
}
