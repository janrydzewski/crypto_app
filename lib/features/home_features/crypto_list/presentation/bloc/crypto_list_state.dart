part of 'crypto_list_bloc.dart';

@freezed
class CryptoListState with _$CryptoListState {
  const factory CryptoListState.initial() = _Initial;
  const factory CryptoListState.loading() = _Loading;
  const factory CryptoListState.data(final List<CryptoEntity> cryptoList) = _Data;
  const factory CryptoListState.failure(final Failure failure) = _Failure;
}
