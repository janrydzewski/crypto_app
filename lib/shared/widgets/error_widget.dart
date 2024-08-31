import 'package:crypto_app/core/constants/animations.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorWidget extends StatelessWidget {
  final Failure failure;
  const ErrorWidget({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      alignment: Alignment.center,
      child: Column(
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
