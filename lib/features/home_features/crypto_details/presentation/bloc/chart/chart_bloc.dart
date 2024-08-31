// ignore_for_file: unused_field

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_prices_usecase.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/interval/interval_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_event.dart';
part 'chart_state.dart';
part 'chart_bloc.freezed.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  final String cryptoId;
  final GetCryptoPricesUsecase _getCryptoPricesUsecase;
  final IntervalBloc _intervalBloc;

  late StreamSubscription _intervalSubscription;
  ChartBloc(this.cryptoId, this._getCryptoPricesUsecase, this._intervalBloc)
      : super(const _Initial()) {
    on<_GetChartData>(_onGetChartData);

    _intervalSubscription = _intervalBloc.stream.listen((state) {
      state.when(
          data: (interval) =>
              add(_GetChartData(cryptoId: cryptoId, days: interval.days)));
    });
  }

  _onGetChartData(_GetChartData event, Emitter<ChartState> emit) async {
    emit(const _Loading());

    final pricesResult = await _getCryptoPricesUsecase.call(
        cryptoId: event.cryptoId, days: event.days);
    pricesResult.fold((l) => emit(_Failure(l)), (r) {
      PricesEntity list = PricesEntity(
          prices: List.generate(24, (index) {
        return r.prices[index * (r.prices.length / 24).floor()];
      }));

      emit(_Data(list));
    });
  }

  @override
  Future<void> close() {
    _intervalSubscription.cancel();
    return super.close();
  }
}
