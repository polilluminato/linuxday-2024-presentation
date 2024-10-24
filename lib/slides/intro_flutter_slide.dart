import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class IntroFlutterSlide extends FlutterDeckSlideWidget {
  const IntroFlutterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-intro',
            title: 'Flutter intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo/flutter.png',
              width: getScreenWidth(context) * .3,
            ),
            const SizedBox(height: kMarginMain),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kMarginHuge,
                vertical: kMarginMain,
              ),
              child: Text(
                'Framework open source di Google per la creazione di\n'
                'applicazioni multipiattaforma compilate in modo '
                'nativo\n da un\'unica base di codice',
                style: FlutterDeckTheme.of(context).textTheme.title,
                textAlign: TextAlign.center,
              ),
            ),
            ActionButton(
              width: 200,
              iconData: PhosphorIcons.linkSimple(),
              text: "flutter.dev",
              onTap: () => openExternalURL("https://flutter.dev"),
            ),
          ],
        ),
      ),
    );
  }
}
