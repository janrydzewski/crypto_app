// ignore_for_file: invalid_annotation_target

import 'package:crypto_app/features/home_features/crypto_details/domain/entities/childs/image_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/childs/market_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_details_entity.freezed.dart';
part 'crypto_details_entity.g.dart';

@freezed
class CryptoDetailsEntity with _$CryptoDetailsEntity {
  factory CryptoDetailsEntity({
    required String id,
    required String symbol,
    required String name,
    required ImageEntity image,
    @JsonKey(name: 'market_data') required MarketDataEntity marketData,
  }) = _CryptoDetailsEntity;

  factory CryptoDetailsEntity.example() => CryptoDetailsEntity(
        id: 'bitcoin',
        symbol: 'btc',
        name: 'Bitcoin',
        image: ImageEntity(
            thumb:
                "https://assets.coingecko.com/coins/images/1/thumb/bitcoin.png?1696501400",
            small:
                "https://assets.coingecko.com/coins/images/1/small/bitcoin.png?1696501400",
            large:
                "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400"),
        marketData: MarketDataEntity(
          priceChange24h: 5.5,
          priceChangePercentage24h: 0,
          priceChangePercentage7d: 0,
          priceChangePercentage14d: 0,
          priceChangePercentage30d: 0,
          priceChangePercentage60d: 0,
          priceChangePercentage200d: 0,
          priceChangePercentage1y: 0,
          currentPrice: {'usd': 5000},
        ),
      );

  factory CryptoDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$CryptoDetailsEntityFromJson(json);
}
