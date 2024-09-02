part of 'list_bloc.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.loading() = _Loading;
  const factory ListState.data(final List<CryptoEntity> cryptoList) = _Data;
  const factory ListState.failure(final Failure failure) = _Failure;
}
