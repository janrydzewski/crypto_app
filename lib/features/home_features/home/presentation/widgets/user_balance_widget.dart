import 'package:animated_digit/animated_digit.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:flutter/material.dart';

class UserBalanceWidget extends StatelessWidget {
  final UserBalanceState state;
  const UserBalanceWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return AnimatedDigitWidget(
            value: state.userBalance,
            textStyle:
                context.displayMedium!.copyWith(color: context.onSecondary),
            valueColors: [
              ValueColor(
                  condition: () =>
                      Theme.of(context).brightness == Brightness.dark,
                  color: Colors.white)
            ],
            prefix: "\$",
            fractionDigits: 2,
            enableSeparator: true,
            loop: false,
          );
  }
}