import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SpoilerSlide extends FlutterDeckSlideWidget {
  const SpoilerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/spoiler-slide',
            title: 'Spoiler...',
            header: FlutterDeckHeaderConfiguration(
              title: 'Last but not least...',
            ),
            steps: 5, // Define the number of steps for the slide
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
          useSteps: true, // Enable steps for the bullet list
          items: const [
            'Questa è una app Linux',
            '... fatta in Flutter',
            '... con i package presentati',
            '... Open Source (MIT)',
            '... disponibile su GitHub',
          ],
        ),
      ),
      rightBuilder: (context) => FractionallySizedBox(
        widthFactor: 0.8,
        child: Image.asset(
          'assets/images/penguin/spoiler.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
