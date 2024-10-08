import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AgendaSlide extends FlutterDeckSlideWidget {
  const AgendaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/agenda-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Agenda',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        useSteps: false,
        items: const [
          'Cosa è Flutter?',
          'Perchè sviluppare app per Linux con Flutter?',
          'Cosa abbiamo a disposizione?',
          //TODO
        ],
      ),
    );
  }
}
