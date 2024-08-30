import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:flutter/material.dart';

InputDecoration textInputDecoration(BuildContext context, String hintText) =>
    InputDecoration(
      suffixIcon: Icon(
        Icons.search,
        color: context.tertiaryFixed,
      ),
      hintText: hintText,
      hintStyle: context.bodySmall,
      border: InputBorder.none,
      contentPadding: MarginsK.h10v10,
      fillColor: context.onPrimary,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: MarginsK.circular10,
        borderSide: BorderSide(
          width: 1,
          color: context.tertiaryFixed,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: MarginsK.circular10,
        borderSide: BorderSide(
          width: 1,
          color: context.tertiaryFixed,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          width: 1,
          color: context.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: MarginsK.circular10,
        borderSide: BorderSide(
          width: 1,
          color: context.errorColor,
        ),
      ),
    );
