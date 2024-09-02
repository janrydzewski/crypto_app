part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState.initial() = _Initial;
  const factory ChartState.loading() = _Loading;
  const factory ChartState.data(final PricesEntity pricesEntity) = _Data;
  const factory ChartState.failure(final Failure failure) = _Failure;
}
