import 'package:crypto_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

// Global class to store margins
class MarginsK extends Constants {
  //ANCHOR - Only
  static const t30 = EdgeInsets.only(top: 30);
  static const top20b80 = EdgeInsets.only(top: 10, bottom: 80);

  //ANCHOR - All
  static const a10 = EdgeInsets.all(10);
  static const a16 = EdgeInsets.all(16);

  //ANCHOR - Symmetric
  static const h10 = EdgeInsets.symmetric(horizontal: 10);
  static const h40 = EdgeInsets.symmetric(horizontal: 40);
  static const v10 = EdgeInsets.symmetric(vertical: 10);
  static const h10v4 = EdgeInsets.symmetric(horizontal: 10, vertical: 4);
  static const h10v10 = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
  static const h20v10 = EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static const h10v15 = EdgeInsets.symmetric(horizontal: 10, vertical: 15);

  //ANCHOR - FromLTRB
  static const l20r20top30b0 = EdgeInsets.fromLTRB(20, 50, 20, 0);
  static const l30r30top00b30 = EdgeInsets.fromLTRB(30, 0, 30, 30);

  //ANCHOR - Circular
  static const circular10 = BorderRadius.all(Radius.circular(10));
  static const circular40 = BorderRadius.all(Radius.circular(40));
}
