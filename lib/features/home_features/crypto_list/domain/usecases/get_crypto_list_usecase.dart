import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_list_param_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/repositories/list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetCryptoListUsecase {
  final CryptoListRepository cryptoListRepository;

  const GetCryptoListUsecase({required this.cryptoListRepository});

  Future<Either<Failure, List<CryptoEntity>>> call(
      CryptoListParamEntity cryptoListParam) async {
    return await cryptoListRepository.getCryptoList(cryptoListParam);
  }
}
