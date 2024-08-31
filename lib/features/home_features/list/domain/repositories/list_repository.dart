import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/list/data/datasources/list_datasource.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ListRepository {
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList();
}

@LazySingleton(as: ListRepository)
class ListRepositoryImpl extends ListRepository {
  final ListDatasource listDatasource;

  ListRepositoryImpl({required this.listDatasource});

  @override
  Future<Either<Failure, List<CryptoEntity>>> getCryptoList() async {
    try {
      final response = await listDatasource.getCryptoList();
      return Right(response);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
