import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/usecases/get_crypto_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';
part 'crypto_list_bloc.freezed.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  final GetCryptoListUsecase _getCryptoListUsecase;
  CryptoListBloc(this._getCryptoListUsecase) : super(const _Initial()) {
    on<_GetCryptoList>(_onGetCryptoList);
  }

  _onGetCryptoList(_GetCryptoList event, Emitter<CryptoListState> emit) async {
    final result = await _getCryptoListUsecase.call(pageKey: event.pageKey);
    result.fold((l) => emit(_Failure(l)), (r) {
      final currentList =
          state.maybeWhen(orElse: () => <CryptoEntity>[], data: (list) => list);
      emit(_Data(currentList + r));
    });
  }
}
