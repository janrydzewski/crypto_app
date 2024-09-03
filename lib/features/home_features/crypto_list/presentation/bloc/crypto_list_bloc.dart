import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_list_param_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/usecases/get_crypto_list_usecase.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';
part 'crypto_list_bloc.freezed.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  final GetCryptoListUsecase _getCryptoListUsecase;
  final UserBalanceCubit _userBalanceCubit;

  late StreamSubscription _userBalanceSubscription;
  CryptoListBloc(this._getCryptoListUsecase, this._userBalanceCubit)
      : super(const _Initial()) {
    on<_GetCryptoList>(_onGetCryptoList);

    // Listen to the user balance cubit stream
    _userBalanceSubscription = _userBalanceCubit.stream.listen((state) {
      add(const _GetCryptoList(pageKey: 0, isForced: true));
    });
  }

  // Function to get crypto list
  _onGetCryptoList(_GetCryptoList event, Emitter<CryptoListState> emit) async {
    if (event.isForced) {
      emit(const _Initial());
    }
    final list = state.maybeWhen(orElse: () => [], data: (list) => list);
    if (list.length < 200) {
      final result = await _getCryptoListUsecase.call(CryptoListParamEntity(
          pageKey: event.pageKey,
          currencyCode: _userBalanceCubit.state.currency.code.toLowerCase()));
      result.fold((l) => emit(_Failure(l)), (r) {
        final currentList = state.maybeWhen(
            orElse: () => <CryptoEntity>[], data: (list) => list);
        emit(_Data(currentList + r));
      });
    }
  }

  @override
  Future<void> close() {
    _userBalanceSubscription.cancel();
    return super.close();
  }
}
