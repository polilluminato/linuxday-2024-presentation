import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SpoilerSlide extends FlutterDeckSlideWidget {
  const SpoilerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-repo-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Spoiler...',
            ),
            steps: 4, // Define the number of steps for the slide
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true, // Enable steps for the bullet list
        items: const [
          'Questa è una app Linux',
          '... fatta in Flutter',
          '... Open Source (MIT)',
          '... disponibile su GitHub',
        ],
      ),
      //TODO: aggiungi una GIF che faccia vedere qualcuno di contento
      rightBuilder: (context) => const Text('FlutterDeckBulletList demo'),
    );
  }
}
