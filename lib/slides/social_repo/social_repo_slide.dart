import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/ui/qrcode_link.dart';

class SocialRepoSlide extends FlutterDeckSlideWidget {
  const SocialRepoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/social-repo-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Social e Repo',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO
        ],
      ),
      rightBuilder: (context) => const QrCodeLink(
        link: "https://bit.ly/ld2024-flutter-slides",
      ),
    );
  }
}
