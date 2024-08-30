import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:flutter/material.dart';

BoxDecoration dropShadowEffect(BuildContext context) => BoxDecoration(
      borderRadius: MarginsK.circular10,
      color: context.onPrimary,
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ],
    );