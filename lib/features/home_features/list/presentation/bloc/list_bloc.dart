import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/list/domain/usecases/get_crypto_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_event.dart';
part 'list_state.dart';
part 'list_bloc.freezed.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final GetCryptoListUsecase _getCryptoListUsecase;
  ListBloc(this._getCryptoListUsecase) : super(const _Initial()) {
    on<_GetCryptoList>(_onGetCryptoList);
  }

  _onGetCryptoList(_GetCryptoList event, Emitter<ListState> emit) async {
    emit(const _Loading());
    final result = await _getCryptoListUsecase.call();
    result.fold((l) => emit(_Failure(l)), (r) => emit(_Data(r)));
  }
}
