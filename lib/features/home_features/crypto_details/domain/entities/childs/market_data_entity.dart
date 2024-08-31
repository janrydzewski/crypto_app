// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_data_entity.freezed.dart';
part 'market_data_entity.g.dart';

@freezed
class MarketDataEntity with _$MarketDataEntity {
  factory MarketDataEntity({
    @JsonKey(name: 'price_change_24h') required double priceChange24h,
    @JsonKey(name: 'price_change_percentage_24h') required double priceChangePercentage24h,
    @JsonKey(name: 'price_change_percentage_7d') required double priceChangePercentage7d,
    @JsonKey(name: 'price_change_percentage_14d') required double priceChangePercentage14d,
    @JsonKey(name: 'price_change_percentage_30d') required double priceChangePercentage30d,
    @JsonKey(name: 'price_change_percentage_60d') required double priceChangePercentage60d,
    @JsonKey(name: 'price_change_percentage_200d') required double priceChangePercentage200d,
    @JsonKey(name: 'price_change_percentage_1y') required double priceChangePercentage1y,
  }) = _MarketDataEntity;

  factory MarketDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketDataEntityFromJson(json);
}
