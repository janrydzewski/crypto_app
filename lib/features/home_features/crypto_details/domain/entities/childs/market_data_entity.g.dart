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
      priceChangePercentage7d:
          (json['price_change_percentage_7d'] as num).toDouble(),
      priceChangePercentage14d:
          (json['price_change_percentage_14d'] as num).toDouble(),
      priceChangePercentage30d:
          (json['price_change_percentage_30d'] as num).toDouble(),
      priceChangePercentage60d:
          (json['price_change_percentage_60d'] as num).toDouble(),
      priceChangePercentage200d:
          (json['price_change_percentage_200d'] as num).toDouble(),
      priceChangePercentage1y:
          (json['price_change_percentage_1y'] as num).toDouble(),
      currentPrice: json['current_price'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MarketDataEntityImplToJson(
        _$MarketDataEntityImpl instance) =>
    <String, dynamic>{
      'price_change_24h': instance.priceChange24h,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'price_change_percentage_7d': instance.priceChangePercentage7d,
      'price_change_percentage_14d': instance.priceChangePercentage14d,
      'price_change_percentage_30d': instance.priceChangePercentage30d,
      'price_change_percentage_60d': instance.priceChangePercentage60d,
      'price_change_percentage_200d': instance.priceChangePercentage200d,
      'price_change_percentage_1y': instance.priceChangePercentage1y,
      'current_price': instance.currentPrice,
    };
