import 'package:crypto_app/core/constants/animations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      alignment: Alignment.center,
      child: LottieBuilder.asset(
        AnimationsK.lottieLoading,
        width: 300,
      ),
    );
  }
}
