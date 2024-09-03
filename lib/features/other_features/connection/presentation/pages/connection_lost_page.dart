import 'package:crypto_app/core/constants/animations.dart';
import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/shared/widgets/dialog_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

// Widget to build the connection lost page
Future<T?> connectionLostWidget<T>(BuildContext context) async =>
    await dialogBuilder(
        context,
        Dialog(
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
                      child:
                          LottieBuilder.asset(AnimationsK.lottieConnectionLost),
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
        ));
