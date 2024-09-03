import 'package:crypto_app/core/constants/constants.dart';

// Global class to store animations
class AnimationsK extends Constants {
  //ANCHOR - General
  static const assets = "assets";
  static const animations = "$assets/animations";

  //ANCHOR - Lottie
  static const lottieLoading = "$animations/loading.json";
  static const lottieError = "$animations/error.json";
  static const lottieConnectionLost = "$animations/connection_lost.json";
}
