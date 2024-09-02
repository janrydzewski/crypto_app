import 'package:crypto_app/core/constants/animations.dart';
import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ConnectionLostView extends StatelessWidget {
  const ConnectionLostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: MarginsK.h10,
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        padding: MarginsK.a16,
        decoration: BoxDecoration(
            color: context.surfaceColor, borderRadius: MarginsK.circular10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: LottieBuilder.asset(AnimationsK.lottieConnectionLost),
                ),
                SizedBox(
                  width: 50,
                  child: IconButton(
                    onPressed: () => context.pop(),
                    icon: Icon(
                      Icons.close,
                      color: context.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "You have lost connection to the network.",
              style: context.titleMedium,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
