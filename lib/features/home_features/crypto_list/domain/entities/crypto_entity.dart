// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_entity.freezed.dart';
part 'crypto_entity.g.dart';

@freezed
class CryptoEntity with _$CryptoEntity {
  factory CryptoEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'price_change_percentage_24h') required double priceChangePercentage,
  }) = _CryptoEntity;

  factory CryptoEntity.example() => CryptoEntity(
        id: 'bitcoin',
        symbol: 'btc',
        name: 'Bitcoin',
        image: 'https://assets.coingecko.com/coins/images/1/large/bitcoin.png',
        currentPrice: 58312,
        priceChangePercentage: -3.96811,
      );

  factory CryptoEntity.fromJson(Map<String, dynamic> json) =>
      _$CryptoEntityFromJson(json);
}
