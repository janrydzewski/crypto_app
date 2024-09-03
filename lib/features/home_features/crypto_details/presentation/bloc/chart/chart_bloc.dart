// ignore_for_file: unused_field

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/chart_data_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_prices_usecase.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/interval/interval_bloc.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_event.dart';
part 'chart_state.dart';
part 'chart_bloc.freezed.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  final String cryptoId;
  final GetCryptoPricesUsecase _getCryptoPricesUsecase;
  final IntervalBloc _intervalBloc;
  final UserBalanceCubit _userBalanceCubit;

  late StreamSubscription _intervalSubscription;
  StreamSubscription? _userBalanceSubscription;
  ChartBloc(this.cryptoId, this._getCryptoPricesUsecase, this._intervalBloc,
      this._userBalanceCubit)
      : super(const _Initial()) {
    on<_GetChartData>(_onGetChartData);

    _intervalSubscription = _intervalBloc.stream.listen((state) {
      state.when(
          data: (interval) =>
              add(_GetChartData(cryptoId: cryptoId, days: interval.days)));

      _userBalanceSubscription = _userBalanceCubit.stream.listen((state) {
        add(_GetChartData(
            cryptoId: cryptoId, days: _intervalBloc.state.interval.days));
      });
    });
  }

  _onGetChartData(_GetChartData event, Emitter<ChartState> emit) async {
    emit(const _Loading());

    final pricesResult = await _getCryptoPricesUsecase.call(
      ChartDataEntity(
          days: event.days,
          currencyCode: _userBalanceCubit.state.currency.code.toLowerCase()),
      cryptoId: event.cryptoId,
    );
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
    _userBalanceSubscription?.cancel();
    return super.close();
  }
}
