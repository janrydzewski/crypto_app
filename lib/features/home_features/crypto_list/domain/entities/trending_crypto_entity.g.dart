// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_crypto_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingCryptoEntityImpl _$$TrendingCryptoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingCryptoEntityImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['large'] as String,
      trendingCryptoData: TrendingCryptoDataEntity.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrendingCryptoEntityImplToJson(
        _$TrendingCryptoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'large': instance.image,
      'data': instance.trendingCryptoData,
    };
