import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';

class SplitSlide extends FlutterDeckSlideWidget {
  const SplitSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/split-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Split slide template',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 1,
        right: 3,
      ),
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
