import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';

class ApiCallSlide extends FlutterDeckSlideWidget {
  const ApiCallSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/api-call-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Chiamate Api',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PackageCard(package: "dio"),
          ],
        );
      },
      rightBuilder: (context) {
        return Text(
          'Here goes the RIGHT section content of the slide',
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        );
      },
    );
  }
}
