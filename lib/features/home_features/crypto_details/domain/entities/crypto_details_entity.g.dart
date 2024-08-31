// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoDetailsEntityImpl _$$CryptoDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoDetailsEntityImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: ImageEntity.fromJson(json['image'] as Map<String, dynamic>),
      links: LinksEntity.fromJson(json['links'] as Map<String, dynamic>),
      marketData: MarketDataEntity.fromJson(
          json['market_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CryptoDetailsEntityImplToJson(
        _$CryptoDetailsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'links': instance.links,
      'market_data': instance.marketData,
    };
