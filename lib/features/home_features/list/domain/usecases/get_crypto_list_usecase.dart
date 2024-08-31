import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/list/domain/repositories/list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetCryptoListUsecase {
  final ListRepository listRepository;

  const GetCryptoListUsecase({required this.listRepository});

  Future<Either<Failure, List<CryptoEntity>>> call(
      {int pageKey = 0, int pageSize = 10}) async {
    return await listRepository.getCryptoList(pageKey, pageSize);
  }
}
