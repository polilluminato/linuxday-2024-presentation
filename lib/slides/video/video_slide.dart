import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/slides/video/videoplayer_view.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';

class VideoSlide extends FlutterDeckSlideWidget {
  const VideoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/video-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Video',
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
            PackageCard(package: "media_kit"),
          ],
        );
      },
      rightBuilder: (context) {
        return const VideoPlayerView();
      },
    );
  }
}
