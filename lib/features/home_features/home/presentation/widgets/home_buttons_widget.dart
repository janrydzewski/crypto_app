import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/theme/styles/box_styles.dart';
import 'package:crypto_app/features/home_features/home/domain/entities/button_entity.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeButtonsWidget extends StatelessWidget {
  const HomeButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MarginsK.h40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ButtonWidget(
            button: ButtonEntity.send(),
          ),
          _ButtonWidget(
            button: ButtonEntity.receive(),
          ),
        ],
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  final ButtonEntity button;
  const _ButtonWidget({required this.button});

  Color getColor(BuildContext context) =>
      button.title == "Receive" ? context.primaryColor : context.secondaryColor;

  Function() getAction(BuildContext context) => button.title == "Receive"
      ? () => context.read<UserBalanceCubit>().increaseBalance()
      : () => context.read<UserBalanceCubit>().decreaseBalance();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: getAction(context),
      child: Container(
        decoration: dropShadowEffect(context).copyWith(
            borderRadius: MarginsK.circular10,
            color: Theme.of(context).scaffoldBackgroundColor),
        padding: MarginsK.h20v10,
        child: Row(
          children: [
            Text(
              button.title,
              style: context.titleLarge,
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              button.icon,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(getColor(context), BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
