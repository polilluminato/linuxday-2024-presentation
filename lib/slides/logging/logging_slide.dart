import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class LoggingSlide extends FlutterDeckSlideWidget {
  const LoggingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/logging-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Logging',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const SidebarColumn(
          children: [
            PackageCard(package: "talker_flutter"),
            PackageCard(package: "talker_dio_logger"),
            PackageCard(package: "talker_bloc_logger"),
            PackageCard(package: "talker_riverpod_logger"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/talker/example-1.jpg",
                  width: getScreenWidth(context) * .31,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(kPaddingHuge),
              child: FlutterDeckBulletList(
                useSteps: false,
                items: const [
                  'Log avanzato: filtri, formattazione, colori, livelli di log',
                  'Log della navigazione tra schermate',
                  'Log dello state management: BLoC, Riverpod',
                  'Log delle chiamate HTTP: Dio, http',
                  'Integrazione con tool estreni: Sentry, Crashlytics',
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
