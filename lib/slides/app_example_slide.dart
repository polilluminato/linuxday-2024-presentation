import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/ui/app_example_card.dart';

class AppExampleSlide extends FlutterDeckSlideWidget {
  const AppExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-example-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'App d\'esempio su Linux',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppExampleCard(
                name: "MusicPod",
                url: "https://github.com/ubuntu-flutter-community/musicpod",
                imageLink:
                    "https://github.com/ubuntu-flutter-community/musicpod/blob/main/.github/images/albums_light_linux.png?raw=true",
              ),
              AppExampleCard(
                name: "AppFlowy",
                url: "https://github.com/AppFlowy-IO/appflowy",
                imageLink:
                    "https://camo.githubusercontent.com/4e4aa58ab8fa3460830a3cb1f35ba5869599c9ac947cdc04358db5cc3b8ebfb4/68747470733a2f2f617070666c6f77792e696f2f5f6e6578742f7374617469632f6d656469612f7461736b732e37393663373533652e706e67",
              ),
              AppExampleCard(
                name: "RustDesk",
                url: "https://github.com/rustdesk/rustdesk",
                imageLink:
                    "https://user-images.githubusercontent.com/71636191/171661982-430285f0-2e12-4b1d-9957-4a58e375304d.png",
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppExampleCard(
                name: "Spotube",
                url: "https://github.com/KRTirtho/spotube",
                imageLink:
                    "https://github.com/KRTirtho/spotube/blob/master/assets/spotube-screenshot.png?raw=true",
              ),
              AppExampleCard(
                name: "AuthPass",
                url: "https://github.com/authpass/authpass",
                imageLink:
                    "https://github.com/authpass/authpass/blob/main/_docs/authpass-platform-composition.png?raw=true",
              ),
              AppExampleCard(
                name: "AppImagePool",
                url: "https://github.com/prateekmedia/appimagepool",
                imageLink:
                    "https://raw.githubusercontent.com/prateekmedia/appimagepool/main/assets/screenshot/home.jpg",
              )
            ],
          ),
        ],
      ),
    );
  }
}
