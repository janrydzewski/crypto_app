part of 'user_balance_cubit.dart';

@freezed
class UserBalanceState with _$UserBalanceState {
  const factory UserBalanceState(
      {required double userBalance,
      required CurrencyEntity currency}) = _UserBalanceState;

  const UserBalanceState._();

  factory UserBalanceState.fromJson(Map<String, dynamic> json) {
    return UserBalanceState(
        userBalance: json["userBalance"] as double,
        currency: CurrencyEntity.fromJson(json["currency"]));
  }

  Map<String, dynamic> toJson() {
    return {"userBalance": userBalance, "currency": currency};
  }
}
