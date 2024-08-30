// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoEntityImpl _$$CryptoEntityImplFromJson(Map<String, dynamic> json) =>
    _$CryptoEntityImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      priceChangePercentage:
          (json['price_change_percentage_24h'] as num).toDouble(),
    );

Map<String, dynamic> _$$CryptoEntityImplToJson(_$CryptoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'price_change_percentage_24h': instance.priceChangePercentage,
    };
