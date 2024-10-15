import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/slides/database/database_view.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';

class DatabaseSlide extends FlutterDeckSlideWidget {
  const DatabaseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/database-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Database',
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
            PackageCard(package: "drift"),
            PackageCard(package: "postgres"),
            PackageCard(package: "stormberry"),
          ],
        );
      },
      rightBuilder: (context) {
        return DatabaseView();
      },
    );
  }
}
