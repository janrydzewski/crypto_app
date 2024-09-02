import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/repositories/list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetCryptoListUsecase {
  final CryptoListRepository cryptoListRepository;

  const GetCryptoListUsecase({required this.cryptoListRepository});

  Future<Either<Failure, List<CryptoEntity>>> call(
      {int pageKey = 0, int pageSize = 25}) async {
    return await cryptoListRepository.getCryptoList(pageKey, pageSize);
  }
}
