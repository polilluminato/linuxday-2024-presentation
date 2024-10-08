import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/slides/charts/samples/bar_chart_sample.dart';
import 'package:linuxday_2024_presentation/slides/charts/samples/line_chart_sample.dart';
import 'package:linuxday_2024_presentation/slides/charts/samples/pie_chart_sample.dart';
import 'package:linuxday_2024_presentation/slides/charts/samples/scattered_chart_sample.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class ChartsSlide extends FlutterDeckSlideWidget {
  const ChartsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/charts-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Grafici',
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
            PackageCard(package: "fl_chart"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LineChartSample(),
                BarChartSample(),
              ],
            ),
            gapH(kMarginHuge),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const PieChartSample(),
                ScatterChartSample(),
              ],
            )
          ],
        );
      },
    );
  }
}
