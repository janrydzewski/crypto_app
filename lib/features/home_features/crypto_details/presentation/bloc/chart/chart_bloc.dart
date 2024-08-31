import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_prices_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_event.dart';
part 'chart_state.dart';
part 'chart_bloc.freezed.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  final GetCryptoPricesUsecase _getCryptoPricesUsecase;
  ChartBloc(this._getCryptoPricesUsecase) : super(const _Initial()) {
    on<_GetChartData>(_onGetChartData);
  }

  _onGetChartData(_GetChartData event, Emitter<ChartState> emit) async {
    emit(const _Loading());

    final pricesResult =
        await _getCryptoPricesUsecase.call(cryptoId: event.cryptoId);
    pricesResult.fold((l) => emit(_Failure(l)), (r) {
      PricesEntity list = PricesEntity(
          prices: List.generate(24, (index) {
        return r.prices[index * (r.prices.length / 24).floor()];
      }));

      emit(_Data(list));
    });
  }
}
