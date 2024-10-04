import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/slides/animation/animated_text_ui.dart';
import 'package:linuxday_2024_presentation/slides/animation/animation_card_ui.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class AnimationSlide extends FlutterDeckSlideWidget {
  const AnimationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/animation-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Animazioni',
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
            PackageCard(package: "lottie"),
            PackageCard(package: "flutter_animate"),
            PackageCard(package: "rive"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimationCardUi(
                  animationWidget: Lottie.asset(
                    "assets/animations/battery_optimizations.json",
                  ),
                ),
                AnimationCardUi(
                  animationWidget: Lottie.asset(
                    "assets/animations/AndroidWave.json",
                  ),
                ),
                AnimationCardUi(
                  animationWidget: Lottie.asset(
                    "assets/animations/LottieLogo1.json",
                  ),
                ),
                AnimationCardUi(
                  animationWidget: Lottie.asset(
                    "assets/animations/LottieLogo2.json",
                  ),
                ),
                AnimationCardUi(
                  animationWidget: Lottie.asset(
                    "assets/animations/bluetoothscanning.json",
                  ),
                )
              ],
            ),
            gapH(kSpaceHuge),
            const AnimatedTextUi(),
            gapH(kSpaceHuge),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimationCardUi(
                  animationWidget: RiveAnimation.asset(
                    'assets/animations/vehicles.riv',
                  ),
                ),
                AnimationCardUi(
                  animationWidget: RiveAnimation.asset(
                    'assets/animations/off_road_car.riv',
                  ),
                ),
                AnimationCardUi(
                  animationWidget: RiveAnimation.asset(
                    'assets/animations/coyote.riv',
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
