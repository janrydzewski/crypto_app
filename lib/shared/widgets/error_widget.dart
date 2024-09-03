import 'package:crypto_app/core/constants/animations.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Widget to build the error widget
class CustomErrorWidget extends StatelessWidget {
  final Failure failure;
  const CustomErrorWidget({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 500,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            AnimationsK.lottieError,
            width: 300,
          ),
          Text(failure.message.toString(), style: context.titleLarge)
        ],
      ),
    );
  }
}
