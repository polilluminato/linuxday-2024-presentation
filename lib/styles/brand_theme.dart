import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';

FlutterDeckThemeData getBrandThemeDataDark() {
  return FlutterDeckThemeData.dark().copyWith(
    splitSlideTheme: const FlutterDeckSplitSlideThemeData(
      rightBackgroundColor: kBackgroundColorDark,
      rightColor: kOnBackgroundColorDark,
      leftBackgroundColor: kBackgroundColorLight,
      leftColor: kOnBackgroundColorLight,
    ),
  );
}

SplitSlideRatio getDefaultSplitSlideRatio() {
  return const SplitSlideRatio(
    left: 1,
    right: 3,
  );
}
