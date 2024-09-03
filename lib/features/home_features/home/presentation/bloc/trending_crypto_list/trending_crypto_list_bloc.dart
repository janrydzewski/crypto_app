import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/usecases/get_trending_crypto_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_crypto_list_event.dart';
part 'trending_crypto_list_state.dart';
part 'trending_crypto_list_bloc.freezed.dart';

class TrendingCryptoListBloc
    extends Bloc<TrendingCryptoListEvent, TrendingCryptoListState> {
  final GetTrendingCryptoListUsecase _getTrendingCryptoListUsecase;
  TrendingCryptoListBloc(this._getTrendingCryptoListUsecase)
      : super(const _Initial()) {
    on<_GetTrendingCryptoList>(_onGetTrendingCryptoList);
  }

  _onGetTrendingCryptoList(_GetTrendingCryptoList event,
      Emitter<TrendingCryptoListState> emit) async {
    final result = await _getTrendingCryptoListUsecase.call();
    result.fold((l) => emit(_Failure(l)), (r) => emit(_Data(r)));
  }
}
