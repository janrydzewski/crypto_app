// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartDataEntityImpl _$$ChartDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ChartDataEntityImpl(
      days: (json['days'] as num).toInt(),
      currencyCode: json['vs_currency'] as String,
    );

Map<String, dynamic> _$$ChartDataEntityImplToJson(
        _$ChartDataEntityImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'vs_currency': instance.currencyCode,
    };
