import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';

class MarkdownSlide extends FlutterDeckSlideWidget {
  const MarkdownSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/markdown-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Markdown',
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
            PackageCard(package: "markdown"),
            PackageCard(package: "flutter_markdown"),
            PackageCard(package: "flutter_quill"),
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
