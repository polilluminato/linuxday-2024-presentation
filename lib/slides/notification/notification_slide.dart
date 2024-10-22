import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:elegant_notification/resources/stacked_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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

  void showNotification() {
    LocalNotification notification = LocalNotification(
      title: "Linux Day 2024 Presentation",
      body:
          "Un saluto a tutti gli amici dello unixMiB qui all'Università Bicocca",
      actions: [
        LocalNotificationAction(
          text: "Chiudi",
        ),
        LocalNotificationAction(
          text: "Ri-Saluta",
        ),
      ],
    );
    notification.onClickAction = (actionIndex) {
      if (actionIndex == 1) {
        showNotification();
      }
    };
    notification.show();
  }

  void showNotificationUI(BuildContext context, Alignment position) {
    ElegantNotification.success(
      width: getScreenWidth(context) * .2,
      background: kBackgroundColorLight,
      isDismissable: false,
      stackedOptions: StackedOptions(
        key: 'top',
        type: StackedType.same,
        itemOffset: const Offset(-5, -5),
      ),
      position: position,
      animation: AnimationType.fromRight,
      title: const Text('Ciao'),
      description: const Text('Sono una notifica che ti saluta e se ne va!'),
    ).show(context);
  }

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const SidebarColumn(
          children: [
            PackageCard(package: "local_notifier"),
            PackageCard(package: "elegant_notification"),
            PackageCard(package: "flutter_local_notifications"),
            PackageCard(package: "toastification"),
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
                iconData: PhosphorIcons.bellRinging(),
                text: "Nativa",
                onTap: () => showNotification(),
              ),
              ActionButton(
                iconData: PhosphorIcons.notification(),
                text: "Top Right",
                onTap: () => showNotificationUI(context, Alignment.topRight),
              ),
              ActionButton(
                iconData: PhosphorIcons.notification(),
                text: "Bottom Right",
                onTap: () => showNotificationUI(context, Alignment.bottomRight),
              ),
            ],
          ),
        );
      },
    );
  }
}
