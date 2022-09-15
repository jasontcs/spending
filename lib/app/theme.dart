import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kAppTheme = FlexThemeData.light(
  scheme: FlexScheme.flutterDash,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 20,
  appBarOpacity: 0.95,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    blendOnColors: false,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
);

final kAppDarkTheme = FlexThemeData.dark(
  scheme: FlexScheme.flutterDash,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarStyle: FlexAppBarStyle.background,
  appBarOpacity: 0.90,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  // To use the playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
);

@immutable
class PercentColor extends ThemeExtension<PercentColor> {
  const PercentColor({this.positive, this.negative});

  final Color? positive;
  final Color? negative;
  @override
  ThemeExtension<PercentColor> copyWith({Color? positive, Color? negative}) {
    return PercentColor(
      positive: positive ?? this.positive,
      negative: negative ?? this.negative,
    );
  }

  @override
  ThemeExtension<PercentColor> lerp(
      ThemeExtension<PercentColor>? other, double t) {
    if (other is! PercentColor) {
      return this;
    }
    return PercentColor(
      positive: Color.lerp(positive, other.positive, t),
      negative: Color.lerp(negative, other.negative, t),
    );
  }
}
