import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirstSlide extends FlutterDeckSlideWidget {
  const FirstSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/first-slide',
            title: 'First Slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Sviluppa la tua prima applicazione per Linux con Flutter',
    );
  }
}
