import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you-slide',
            title: "Thank you!",
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: FractionallySizedBox(
          heightFactor: 0.7,
          child: Image.asset(
            'assets/gifs/thank-you.gif',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
