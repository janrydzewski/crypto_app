// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_crypto_data_entity.freezed.dart';
part 'trending_crypto_data_entity.g.dart';

@freezed
class TrendingCryptoDataEntity with _$TrendingCryptoDataEntity {
  factory TrendingCryptoDataEntity({
    required double price,
    @JsonKey(name: 'price_change_percentage_24h')
    required Map<String, dynamic> priceChangePercentage,
  }) = _TrendingCryptoDataEntity;

  factory TrendingCryptoDataEntity.fromJson(Map<String, dynamic> json) =>
      _$TrendingCryptoDataEntityFromJson(json);
}
