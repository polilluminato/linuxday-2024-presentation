import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:pdfrx/pdfrx.dart';

class PdfSlide extends FlutterDeckSlideWidget {
  const PdfSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/pdf-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'PDF',
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
            PackageCard(package: "pdfrx"),
            PackageCard(package: "pdf"),
          ],
        );
      },
      rightBuilder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Local PDF",
                  style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: getScreenHeight(context) * .7,
                  width: getScreenWidth(context) * .3,
                  child: PdfViewer.asset(
                    "assets/pdf/sample.pdf",
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remote PDF",
                  style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: getScreenHeight(context) * .7,
                  width: getScreenWidth(context) * .30,
                  child: PdfViewer.uri(
                    Uri.parse(
                      'https://cdn.nakamotoinstitute.org/docs/bitcoin.pdf',
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
