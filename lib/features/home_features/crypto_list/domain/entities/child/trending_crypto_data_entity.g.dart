// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_crypto_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingCryptoDataEntityImpl _$$TrendingCryptoDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingCryptoDataEntityImpl(
      price: (json['price'] as num).toDouble(),
      priceChangePercentage:
          json['price_change_percentage_24h'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TrendingCryptoDataEntityImplToJson(
        _$TrendingCryptoDataEntityImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'price_change_percentage_24h': instance.priceChangePercentage,
    };
