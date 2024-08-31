part of 'crypto_details_bloc.dart';

@freezed
class CryptoDetailsState with _$CryptoDetailsState {
  const factory CryptoDetailsState.initial() = _Initial;
  const factory CryptoDetailsState.loading() = _Loading;
  const factory CryptoDetailsState.data(final CryptoDetailsEntity cryptoDetails, final PricesEntity pricesEntity) = _Data;
  const factory CryptoDetailsState.failure(final Failure failure) = _Failure;
}
