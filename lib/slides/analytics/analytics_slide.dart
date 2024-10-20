import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';

class AnalyticsSlide extends FlutterDeckSlideWidget {
  const AnalyticsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/analytics-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Analytics',
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
            PackageCard(package: "sentry_flutter"),
            PackageCard(package: "amplify_analytics_pinpoint"),
            PackageCard(package: "plausible_analytics"),
          ],
        );
      },
      rightBuilder: (context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(kPaddingHuge),
            child: FlutterDeckBulletList(
              useSteps: false,
              items: const [
                'Comportamento dei propri utenti nella app',
                'Tracking navigazione',
                'Tracking chiamate HTTP',
                'Tracking eventi (click, scroll, ecc.)',
              ],
            ),
          ),
        );
      },
    );
  }
}
