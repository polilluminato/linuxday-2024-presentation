import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:printing/printing.dart';

class PrintSlide extends FlutterDeckSlideWidget {
  const PrintSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/print-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Stampa',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return ListView(
          children: const [
            PackageCard(package: "printing"),
          ],
        );
      },
      rightBuilder: (context) {
        return Center(
          child: Wrap(
            spacing: kSpaceHuge,
            runSpacing: kSpaceHuge,
            runAlignment: WrapAlignment.spaceEvenly,
            children: [
              ActionButton(
                text: "Stampa",
                iconData: PhosphorIcons.printer(),
                onTap: () async {
                  final pdf = await rootBundle.load('assets/pdf/sample.pdf');
                  await Printing.layoutPdf(
                    onLayout: (_) => pdf.buffer.asUint8List(),
                  );
                },
              ),
              ActionButton(
                text: "Condividi",
                iconData: PhosphorIcons.export(),
                onTap: () async {
                  final pdf = await rootBundle.load('assets/pdf/sample.pdf');
                  await Printing.sharePdf(
                    bytes: pdf.buffer.asUint8List(),
                    filename: 'shared-document.pdf',
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
