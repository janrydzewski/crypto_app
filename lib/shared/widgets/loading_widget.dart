import 'package:crypto_app/core/constants/animations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Widget to build the loading widget
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 300,
      alignment: Alignment.center,
      child: LottieBuilder.asset(
        AnimationsK.lottieLoading,
        width: 300,
      ),
    );
  }
}
