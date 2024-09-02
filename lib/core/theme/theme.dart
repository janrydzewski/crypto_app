import "package:flutter/material.dart";

class MaterialTheme {
  const MaterialTheme();

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xFF1E88E5),
      surfaceTint: Color(0xFF1E88E5),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFBBDEFB),
      onPrimaryContainer: Color(0xFF0D47A1),
      secondary: Color(0xFF43A047),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFC8E6C9),
      onSecondaryContainer: Color(0xFF1B5E20),
      tertiary: Color(0xFFFFC107),
      onTertiary: Color(0xFF212121),
      tertiaryContainer: Color(0xFFFFECB3),
      onTertiaryContainer: Color(0xFF3E2723),
      error: Color(0xFFD32F2F),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFCDD2),
      onErrorContainer: Color(0xFFB71C1C),
      background: Color(0xFFF5F5F5),
      onBackground: Color(0xFF212121),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF212121),
      surfaceVariant: Color(0xFFEEEEEE),
      onSurfaceVariant: Color(0xFF616161),
      outline: Color(0xFFBDBDBD),
      outlineVariant: Color(0xFFE0E0E0),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF212121),
      inverseOnSurface: Color(0xFFF5F5F5),
      inversePrimary: Color(0xFF82B1FF),
      primaryFixed: Color(0xFFBBDEFB),
      onPrimaryFixed: Color(0xFF0D47A1),
      primaryFixedDim: Color(0xFF1E88E5),
      onPrimaryFixedVariant: Color(0xFF0D47A1),
      secondaryFixed: Color(0xFFC8E6C9),
      onSecondaryFixed: Color(0xFF1B5E20),
      secondaryFixedDim: Color(0xFF43A047),
      onSecondaryFixedVariant: Color(0xFF1B5E20),
      tertiaryFixed: Color(0xFFFFECB3),
      onTertiaryFixed: Color(0xFF3E2723),
      tertiaryFixedDim: Color(0xFFFFC107),
      onTertiaryFixedVariant: Color(0xFF3E2723),
      surfaceDim: Color(0xFFE0E0E0),
      surfaceBright: Color(0xFFFFFFFF),
      surfaceContainerLowest: Color(0xFFF5F5F5),
      surfaceContainerLow: Color(0xFFFFFFFF),
      surfaceContainer: Color(0xFFF5F5F5),
      surfaceContainerHigh: Color(0xFFFFFFFF),
      surfaceContainerHighest: Color(0xFFE0E0E0),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF82B1FF),
      surfaceTint: Color(0xFF82B1FF),
      onPrimary: Color(0xFF0D47A1),
      primaryContainer: Color(0xFF1E88E5),
      onPrimaryContainer: Color(0xFFBBDEFB),
      secondary: Color(0xFF66BB6A),
      onSecondary: Color(0xFF1B5E20),
      secondaryContainer: Color(0xFF388E3C),
      onSecondaryContainer: Color(0xFFC8E6C9),
      tertiary: Color(0xFFFFD54F),
      onTertiary: Color(0xFF3E2723),
      tertiaryContainer: Color(0xFFFFB300),
      onTertiaryContainer: Color(0xFFFFECB3),
      error: Color(0xFFEF9A9A),
      onError: Color(0xFFD32F2F),
      errorContainer: Color(0xFFB71C1C),
      onErrorContainer: Color(0xFFFFCDD2),
      background: Color(0xFF303030),
      onBackground: Color(0xFFE0E0E0),
      surface: Color(0xFF424242),
      onSurface: Color(0xFFE0E0E0),
      surfaceVariant: Color(0xFF616161),
      onSurfaceVariant: Color(0xFF9E9E9E),
      outline: Color(0xFF757575),
      outlineVariant: Color(0xFFBDBDBD),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFFE0E0E0),
      inverseOnSurface: Color(0xFF212121),
      inversePrimary: Color(0xFF1E88E5),
      primaryFixed: Color(0xFF1E88E5),
      onPrimaryFixed: Color(0xFFBBDEFB),
      primaryFixedDim: Color(0xFF0D47A1),
      onPrimaryFixedVariant: Color(0xFFBBDEFB),
      secondaryFixed: Color(0xFF388E3C),
      onSecondaryFixed: Color(0xFFC8E6C9),
      secondaryFixedDim: Color(0xFF1B5E20),
      onSecondaryFixedVariant: Color(0xFFC8E6C9),
      tertiaryFixed: Color(0xFFFFB300),
      onTertiaryFixed: Color(0xFFFFECB3),
      tertiaryFixedDim: Color(0xFF3E2723),
      onTertiaryFixedVariant: Color(0xFFFFECB3),
      surfaceDim: Color(0xFF424242),
      surfaceBright: Color(0xFF616161),
      surfaceContainerLowest: Color(0xFF212121),
      surfaceContainerLow: Color(0xFF303030),
      surfaceContainer: Color(0xFF424242),
      surfaceContainerHigh: Color(0xFF616161),
      surfaceContainerHighest: Color(0xFF757575),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      fontFamily: "Montserrat",
      shadowColor: Colors.red,
      // appBarTheme: AppBarTheme(
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: colorScheme.onSurface,
      //   actionsIconTheme: IconThemeData(color: colorScheme.onSurface),
      //   iconTheme: IconThemeData(color: colorScheme.onSurface),
      // ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 96.0, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        displayMedium: TextStyle(
            fontSize: 60.0, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        displaySmall: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w400),
        headlineMedium: TextStyle(
            fontSize: 34.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        titleLarge: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        titleMedium: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        titleSmall: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyLarge: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        bodyMedium: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        bodySmall: TextStyle(
            fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        labelLarge: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        labelSmall: TextStyle(
            fontSize: 10.0, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll<Size>(Size.fromHeight(44)),
        ),
      ));

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceContainerHighest,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainerLowest: surfaceContainerLowest,
      surfaceBright: surfaceBright,
      surfaceContainer: surfaceContainer,
      surfaceDim: surfaceDim,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
