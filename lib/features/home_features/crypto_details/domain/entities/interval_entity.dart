
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interval_entity.freezed.dart';
part 'interval_entity.g.dart';

@freezed
class IntervalEntity with _$IntervalEntity {
  factory IntervalEntity({
    required String interval,
    required int days,
  }) = _IntervalEntity;

  factory IntervalEntity.day() => IntervalEntity(interval: '1D', days: 1);
  factory IntervalEntity.week() => IntervalEntity(interval: '7D', days: 7);
  factory IntervalEntity.month() => IntervalEntity(interval: '1M', days: 31);
	
  factory IntervalEntity.fromJson(Map<String, dynamic> json) =>
			_$IntervalEntityFromJson(json);
}
