part of 'trending_crypto_list_bloc.dart';

@freezed
class TrendingCryptoListEvent with _$TrendingCryptoListEvent {
  const factory TrendingCryptoListEvent.getTrendingCryptoList() = _GetTrendingCryptoList;
}
