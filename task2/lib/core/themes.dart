import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});

final lightTheme = FlexThemeData.light(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
    primary: Colors.blue,
    secondary: Colors.blue,
  ),
  surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
  blendLevel: 9,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: true,
    cardRadius: 12.0,
    bottomSheetRadius: 14.0,
  ),
);

final darkTheme = FlexThemeData.dark(
  surfaceMode: FlexSurfaceMode.highBackgroundLowScaffold,
  blendLevel: 9,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
    primary: Colors.blue,
    secondary: Colors.blue,
  ),
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    cardRadius: 12.0,
    bottomSheetRadius: 14.0,
  ),
);
