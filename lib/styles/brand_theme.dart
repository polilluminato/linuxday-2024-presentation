import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';

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

BoxDecoration getDefaultContainerDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: kOnBackgroundColorLight,
      width: 1,
    ),
    borderRadius: kBorderRadiusSmall,
  );
}
