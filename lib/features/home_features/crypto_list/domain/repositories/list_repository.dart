import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/data/datasources/crypto_list_datasource.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class CryptoListRepository {
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList(
      int pageKey, int pageSize);
  Future<Either<Failure, List<TrendingCryptoEntity>>> getTrendingCryptoList();
}

@LazySingleton(as: CryptoListRepository)
class CryptoListRepositoryImpl extends CryptoListRepository {
  final CryptoListDatasource cryptoListDatasource;

  CryptoListRepositoryImpl({required this.cryptoListDatasource});

  @override
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList(
      int pageKey, int pageSize) async {
    try {
      final response =
          await cryptoListDatasource.getCryptoList(pageKey, pageSize);
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<TrendingCryptoEntity>>>
      getTrendingCryptoList() async {
    try {
      final response = await cryptoListDatasource.getTrendingCryptoList();
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
