part of 'user_balance_cubit.dart';

@freezed
class UserBalanceState with _$UserBalanceState {
  const factory UserBalanceState({required double userBalance}) =
      _UserBalanceState;

  const UserBalanceState._();

  factory UserBalanceState.fromJson(Map<String, dynamic> json) {
    return UserBalanceState(userBalance: json["userBalance"] as double);
  }

  Map<String, dynamic> toJson() {
    return {"userBalance": userBalance};
  }
}
