import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/repositories/details_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetCryptoPricesUsecase {
  final DetailsRepository detailsRepository;

  const GetCryptoPricesUsecase({required this.detailsRepository});

  Future<Either<Failure, PricesEntity>> call(
      {String cryptoId = "bitcoin", int days = 1}) async {
    return await detailsRepository.getCryptoChartData(cryptoId, days);
  }
}
