part of 'crypto_details_bloc.dart';


@freezed
class CryptoDetailsEvent with _$CryptoDetailsEvent {
  const factory CryptoDetailsEvent.getCryptoDetails({required String cryptoId}) = _GetCryptoDetails;
}
