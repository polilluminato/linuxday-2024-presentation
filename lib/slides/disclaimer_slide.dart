import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class DisclaimerSlide extends FlutterDeckSlideWidget {
  const DisclaimerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/disclaimer-slide',
            title: 'Disclaimer',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gapW(getScreenWidth(context) * .1),
            SizedBox(
              width: 300,
              child: Image.asset(
                'assets/gifs/pengiun-alert.gif',
                fit: BoxFit.cover,
              ),
            ),
            gapW(kSpaceHuge),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ho provato personalmente tutti package presentati in questa presentazione'
                    ' ma se volete fondare una azienda, una app, una startup o un progetto'
                    ' che li utilizza fate le vostre prove e leggete la documentazione',
                    style: FlutterDeckTheme.of(context).textTheme.header,
                    textAlign: TextAlign.left,
                  ),
                  gapH(kSpaceHuge),
                  Text(
                    '* se il progetto prende piede e volete fare una donazione al'
                    ' sottoscritto i miei contatti sono alla fine 😉',
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            gapW(getScreenWidth(context) * .1),
          ],
        ),
      ),
    );
  }
}
