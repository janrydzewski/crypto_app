// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_data_entity.freezed.dart';
part 'chart_data_entity.g.dart';

@freezed
class ChartDataEntity with _$ChartDataEntity {
  factory ChartDataEntity({
    required int days,
    @JsonKey(name: 'vs_currency') required String currencyCode,
  }) = _ChartDataEntity;

  factory ChartDataEntity.fromJson(Map<String, dynamic> json) =>
      _$ChartDataEntityFromJson(json);
}
