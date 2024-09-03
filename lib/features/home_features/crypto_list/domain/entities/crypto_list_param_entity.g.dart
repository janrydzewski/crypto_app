// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_list_param_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoListParamEntityImpl _$$CryptoListParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoListParamEntityImpl(
      pageSize: (json['per_page'] as num?)?.toInt() ?? 25,
      pageKey: (json['page'] as num).toInt(),
      currencyCode: json['vs_currency'] as String,
    );

Map<String, dynamic> _$$CryptoListParamEntityImplToJson(
        _$CryptoListParamEntityImpl instance) =>
    <String, dynamic>{
      'per_page': instance.pageSize,
      'page': instance.pageKey,
      'vs_currency': instance.currencyCode,
    };
