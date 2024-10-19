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
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 3,
        right: 2,
      ),
      leftBuilder: (context) => Center(
        child: FlutterDeckBulletList(
          useSteps: false,
          items: const [
            'Intro Flutter',
            'Esempi di app Flutter per Linux',
            'Package a disposizione ed esempi',
          ],
        ),
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: .9,
        child: Image.asset(
          'assets/images/penguin/agenda.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
