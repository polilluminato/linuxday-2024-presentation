import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';

FlutterDeckThemeData getBrandThemeDataDark() {
  return FlutterDeckThemeData.dark().copyWith(
    splitSlideTheme: const FlutterDeckSplitSlideThemeData(
      rightBackgroundColor: BrandColors.backgroundColorDark,
      rightColor: BrandColors.onBackgroundColorDark,
      leftBackgroundColor: BrandColors.backgroundColorLight,
      leftColor: BrandColors.onBackgroundColorLight,
    ),
  );
}

SplitSlideRatio getDefaultSplitSlideRatio() {
  return const SplitSlideRatio(
    left: 1,
    right: 3,
  );
}
