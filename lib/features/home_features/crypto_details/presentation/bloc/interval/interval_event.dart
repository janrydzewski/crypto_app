part of 'interval_bloc.dart';

@freezed
class IntervalEvent with _$IntervalEvent {
  const factory IntervalEvent.changeInterval({required IntervalEntity interval}) = _ChangeInterval;
}