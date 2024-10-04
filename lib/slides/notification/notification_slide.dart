import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';

class NotificationSlide extends FlutterDeckSlideWidget {
  const NotificationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/notification-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Notifiche',
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
            PackageCard(package: "elegant_notification"),
            PackageCard(package: "flutter_local_notifications"),
            PackageCard(package: "toastification"),
            PackageCard(package: "local_notifier"),
          ],
        );
      },
      rightBuilder: (context) {
        return Text(
          'Here goes the RIGHT section content of the slide',
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        );
      },
    );
  }
}
