import 'package:crypto_app/core/constants/icons.dart';
import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/theme/styles/box_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const CustomBottomNavigationBarWidget(
      {super.key, required this.navigationShell});

  void onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MarginsK.l30r30top00b30,
      width: double.infinity,
      padding: MarginsK.v10,
      height: 60,
      decoration: dropShadowEffect(context).copyWith(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BottomNavigationBarElementWidget(
            index: 0,
            func: onTap,
            isSelected: navigationShell.currentIndex == 0,
          ),
          _BottomNavigationBarElementWidget(
            index: 1,
            func: onTap,
            isSelected: navigationShell.currentIndex == 1,
          ),
        ],
      ),
    );
  }
}

class _BottomNavigationBarElementWidget extends StatelessWidget {
  final int index;
  final Function(int index) func;
  final bool isSelected;

  const _BottomNavigationBarElementWidget(
      {required this.index, required this.func, required this.isSelected});

  String get getIcon {
    switch (index) {
      case 0:
        return isSelected ? IconsK.homeFill : IconsK.home;
      case 1:
        return isSelected ? IconsK.arrowTrendingFilled : IconsK.arrowTrending;
      default:
        return IconsK.homeFill;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => func(index),
      child: SvgPicture.asset(
        getIcon,
        colorFilter: ColorFilter.mode(context.onSurface, BlendMode.srcIn),
        width: 25,
        height: 25,
      ),
    );
  }
}
