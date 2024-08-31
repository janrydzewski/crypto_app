import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/usecases/get_crypto_details_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_details_event.dart';
part 'crypto_details_state.dart';
part 'crypto_details_bloc.freezed.dart';

class CryptoDetailsBloc extends Bloc<CryptoDetailsEvent, CryptoDetailsState> {
  final GetCryptoDetailsUsecase _getCryptoDetailsUsecase;
  CryptoDetailsBloc(this._getCryptoDetailsUsecase) : super(const _Initial()) {
    on<_GetCryptoDetails>(_onGetCryptoDetails);
  }

  _onGetCryptoDetails(
      _GetCryptoDetails event, Emitter<CryptoDetailsState> emit) async {
    emit(const _Loading());
    final result =
        await _getCryptoDetailsUsecase.call(cryptoId: event.cryptoId);
    await Future.delayed(const Duration(seconds: 1));
    result.fold((l) => emit(_Failure(l)), (r) => emit(_Data(r)));
  }
}
