part of 'chart_bloc.dart';

@freezed
class ChartEvent with _$ChartEvent {
  const factory ChartEvent.getChartData({required String cryptoId}) = _GetChartData;
}
