import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
            PackageCard(package: "flutter_markdown"),
            PackageCard(package: "markdown"),
            PackageCard(package: "flutter_quill"),
          ],
        );
      },
      rightBuilder: (context) {
        return FutureBuilder(
          future: rootBundle.loadString('assets/markdown/document.md'),
          builder: (context, snapshot) => Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: FlutterDeckCodeHighlight(
                    fileName: "document.md",
                    language: "markdown",
                    code: snapshot.data ?? '',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: getDefaultContainerDecoration(),
                  child: Markdown(
                    selectable: true,
                    data: snapshot.data ?? '',
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
