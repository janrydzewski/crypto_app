import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_details_usecase.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_prices_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_details_event.dart';
part 'crypto_details_state.dart';
part 'crypto_details_bloc.freezed.dart';

class CryptoDetailsBloc extends Bloc<CryptoDetailsEvent, CryptoDetailsState> {
  final GetCryptoDetailsUsecase _getCryptoDetailsUsecase;
  final GetCryptoPricesUsecase _getCryptoPricesUsecase;
  CryptoDetailsBloc(this._getCryptoDetailsUsecase, this._getCryptoPricesUsecase)
      : super(const _Initial()) {
    on<_GetCryptoDetails>(_onGetCryptoDetails);
  }

  _onGetCryptoDetails(
      _GetCryptoDetails event, Emitter<CryptoDetailsState> emit) async {
    PricesEntity pricesEntity = PricesEntity(prices: []);

    emit(const _Loading());

    final pricesResult =
        await _getCryptoPricesUsecase.call(cryptoId: event.cryptoId);
    pricesResult.fold((l) => emit(_Failure(l)), (r) => pricesEntity = r);

    final result =
        await _getCryptoDetailsUsecase.call(cryptoId: event.cryptoId);
    await Future.delayed(const Duration(seconds: 1));
    result.fold((l) => emit(_Failure(l)), (r) => emit(_Data(r, pricesEntity)));
  }
}
