// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntervalEntityImpl _$$IntervalEntityImplFromJson(Map<String, dynamic> json) =>
    _$IntervalEntityImpl(
      interval: json['interval'] as String,
      days: (json['days'] as num).toInt(),
    );

Map<String, dynamic> _$$IntervalEntityImplToJson(
        _$IntervalEntityImpl instance) =>
    <String, dynamic>{
      'interval': instance.interval,
      'days': instance.days,
    };
