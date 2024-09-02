part of 'crypto_list_bloc.dart';

@freezed
class CryptoListEvent with _$CryptoListEvent {
  const factory CryptoListEvent.getCryptoList({required int pageKey}) = _GetCryptoList;
}
