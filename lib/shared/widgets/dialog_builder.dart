import 'package:flutter/material.dart';

// Global dialog builder
Future<T?> dialogBuilder<T>(
    BuildContext appContext, Widget dialogContent) async {
  return await showDialog(
    context: appContext,
    builder: (context) => dialogContent,
  );
}
