import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/repositories/list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Usecase to get trending crypto list
@LazySingleton()
class GetTrendingCryptoListUsecase {
  final CryptoListRepository trendingListRepository;

  const GetTrendingCryptoListUsecase({required this.trendingListRepository});

  Future<Either<Failure, List<TrendingCryptoEntity>>> call() async {
    return await trendingListRepository.getTrendingCryptoList();
  }
}
