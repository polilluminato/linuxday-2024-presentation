import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:window_manager/window_manager.dart';

class WindowSlide extends FlutterDeckSlideWidget {
  const WindowSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/window-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Gestione Finestra',
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
            PackageCard(package: "window_manager"),
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
                iconData: PhosphorIcons.frameCorners(),
                text: "1500x800",
                onTap: () async {
                  await windowManager.unmaximize();
                  await windowManager.setSize(const Size(1500, 800));
                },
              ),
              ActionButton(
                iconData: PhosphorIcons.arrowsOut(),
                text: "FullScreen",
                onTap: () async {
                  await windowManager.maximize();
                },
              ),
              ActionButton(
                iconData: PhosphorIcons.minusSquare(),
                text: "Minimized",
                onTap: () async {
                  await windowManager.minimize();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
