// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prices_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PricesEntityImpl _$$PricesEntityImplFromJson(Map<String, dynamic> json) =>
    _$PricesEntityImpl(
      prices: (json['prices'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$PricesEntityImplToJson(_$PricesEntityImpl instance) =>
    <String, dynamic>{
      'prices': instance.prices,
    };
