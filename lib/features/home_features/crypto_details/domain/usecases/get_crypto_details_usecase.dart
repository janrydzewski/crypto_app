import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/repositories/details_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Usecase to get crypto details
@LazySingleton()
class GetCryptoDetailsUsecase {
  final DetailsRepository detailsRepository;

  const GetCryptoDetailsUsecase({required this.detailsRepository});

  Future<Either<Failure, CryptoDetailsEntity>> call(
      {String cryptoId = "bitcoin"}) async {
    return await detailsRepository.getCryptoDetails(cryptoId);
  }
}
