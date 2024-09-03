// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketDataEntityImpl _$$MarketDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketDataEntityImpl(
      priceChange24h: (json['price_change_24h'] as num).toDouble(),
      priceChangePercentage24h:
          (json['price_change_percentage_24h'] as num).toDouble(),
      currentPrice: json['current_price'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MarketDataEntityImplToJson(
        _$MarketDataEntityImpl instance) =>
    <String, dynamic>{
      'price_change_24h': instance.priceChange24h,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'current_price': instance.currentPrice,
    };
