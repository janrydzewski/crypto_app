import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/data/datasources/crypto_list_datasource.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_list_param_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class CryptoListRepository {
  // Function to get crypto list - List<CryptoEntity>
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList(
      CryptoListParamEntity cryptoListParam);
  // Function to get trending crypto list - List<TrendingCryptoEntity>
  Future<Either<Failure, List<TrendingCryptoEntity>>> getTrendingCryptoList();
}

@LazySingleton(as: CryptoListRepository)
class CryptoListRepositoryImpl extends CryptoListRepository {
  final CryptoListDatasource cryptoListDatasource;

  CryptoListRepositoryImpl({required this.cryptoListDatasource});

  // Implementation of the function to get crypto list
  @override
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList(
      CryptoListParamEntity cryptoListParam) async {
    try {
      final response =
          await cryptoListDatasource.getCryptoList(cryptoListParam);
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  // Implementation of the function to get trending crypto list
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
