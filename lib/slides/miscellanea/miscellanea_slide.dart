import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class MiscellaneaSlide extends FlutterDeckSlideWidget {
  const MiscellaneaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/miscellanea-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Miscellanea',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) {
      return Center(
        child: Wrap(
          spacing: kSpaceHuge,
          runSpacing: kSpaceHuge,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            PackageCard(
              package: "tray_manager",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "hotkey_manager",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "launch_at_startup",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "screen_capturer",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "screen_retriever",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "clipboard_watcher",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "flutter_distributor",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "disks_desktop",
              width: getScreenWidth(context) * .27,
            ),
            PackageCard(
              package: "contextual_menu",
              width: getScreenWidth(context) * .27,
            ),
          ],
        ),
      );
    });
  }
}
