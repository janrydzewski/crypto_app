part of 'trending_crypto_list_bloc.dart';

@freezed
class TrendingCryptoListState with _$TrendingCryptoListState {
  const factory TrendingCryptoListState.initial() = _Initial;
  const factory TrendingCryptoListState.loading() = _Loading;
  const factory TrendingCryptoListState.data(final List<TrendingCryptoEntity> cryptoList) = _Data;
  const factory TrendingCryptoListState.failure(final Failure failure) = _Failure;
}
