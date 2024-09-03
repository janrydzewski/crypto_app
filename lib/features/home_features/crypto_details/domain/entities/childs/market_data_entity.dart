// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_data_entity.freezed.dart';
part 'market_data_entity.g.dart';

@freezed
class MarketDataEntity with _$MarketDataEntity {
  factory MarketDataEntity({
    @JsonKey(name: 'price_change_24h') required double priceChange24h,
    @JsonKey(name: 'price_change_percentage_24h') required double priceChangePercentage24h,
    @JsonKey(name: 'current_price') required Map<String, dynamic> currentPrice,
  }) = _MarketDataEntity;

  factory MarketDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketDataEntityFromJson(json);
}
