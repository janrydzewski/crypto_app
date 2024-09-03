import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/shared/widgets/dialog_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Function to build the chart info dialog widget
Future<T?> chartInfoDialogWidget<T>(
  BuildContext appContext,
) async =>
    await dialogBuilder<T>(
      appContext,
      Dialog(
        insetPadding: MarginsK.h10,
        backgroundColor: Colors.transparent,
        child: Container(
          width: double.infinity,
          padding: MarginsK.a16,
          decoration: BoxDecoration(
              color: appContext.surfaceColor,
              borderRadius: MarginsK.circular10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Information",
                    style: appContext.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => appContext.pop(),
                    child: const SizedBox(
                      width: 40,
                      child: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hover over the chart to see the price at a specific time",
                style: appContext.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
