import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'user_balance_state.dart';
part 'user_balance_cubit.freezed.dart';

class UserBalanceCubit extends HydratedCubit<UserBalanceState> {
  UserBalanceCubit() : super(const UserBalanceState(userBalance: 1000));

  void increaseBalance() {
    emit(state.copyWith(userBalance: state.userBalance + 100));
  }

  void decreaseBalance() {
    if (state.userBalance - 100 < 0) {
      emit(state.copyWith(userBalance: 0));
    } else {
      emit(state.copyWith(userBalance: state.userBalance - 100));
    }
  }

  @override
  UserBalanceState? fromJson(Map<String, dynamic> json) {
    return UserBalanceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(UserBalanceState state) {
    return state.toJson();
  }
}
