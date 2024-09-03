// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyEntityImpl _$$CurrencyEntityImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyEntityImpl(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      currencyRate: (json['currencyRate'] as num).toDouble(),
      isSymbolOnRight: json['isSymbolOnRight'] as bool,
    );

Map<String, dynamic> _$$CurrencyEntityImplToJson(
        _$CurrencyEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'currencyRate': instance.currencyRate,
      'isSymbolOnRight': instance.isSymbolOnRight,
    };
