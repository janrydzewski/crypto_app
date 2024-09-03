import 'package:crypto_app/core/constants/animations.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/network/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Widget to build the error widget
class CustomErrorWidget extends StatelessWidget {
  final int offset;
  final Failure failure;
  const CustomErrorWidget(
      {super.key, required this.failure, this.offset = 350});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - offset,
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
