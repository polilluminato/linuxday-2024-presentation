import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/provider/audio_provider.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/slides/audio/track_model.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final trackIndexProvider = StateProvider<int>((ref) => 0);

class AudioSlide extends FlutterDeckSlideWidget {
  AudioSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/audio-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Audio',
            ),
          ),
        );

  final audioProvider = getIt<AudioProvider>();
  List<TrackModel> tracks = [
    TrackModel(
      name: "Local file",
      path: "audio/sample.mp3",
      type: "local",
    ),
    TrackModel(
      name: "Local file 2",
      path: "audio/sample2.mp3",
      type: "local",
    ),
    TrackModel(
      name: "Remote file",
      path:
          "https://github.com/polilluminato/linuxday-2024-presentation/raw/refs/heads/main/assets/audio/remote-sample.mp3",
      type: "remote_file",
    ),
    TrackModel(
      name: "Remote stream",
      path:
          "https://audio-edge-3mayu.fra.h.radiomast.io/ref-64k-heaacv2-stereo",
      type: "remote_stream",
    ),
  ];

  Future<void> play(TrackModel track) async {
    if (track.type == "local") {
      await audioProvider.playAssetSource(track.path);
    } else if (track.type == "remote_file" || track.type == "remote_stream") {
      await audioProvider.playRemoteSource(track.path);
    }
  }

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const SidebarColumn(
          children: [
            PackageCard(package: "audioplayers"),
            PackageCard(package: "flutter_soloud"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                gapW(kSpaceHuge * 2),
                Image.asset(
                  'assets/images/penguin/audio.jpg',
                  fit: BoxFit.cover,
                  width: getScreenWidth(context) * .2,
                ),
                gapW(kSpaceHuge * 2),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tracks.length,
                    itemBuilder: (context, index) {
                      return Consumer(
                        builder: (context, ref, child) {
                          return ListTile(
                            leading: ref.watch(trackIndexProvider) == index
                                ? Icon(
                                    PhosphorIcons.arrowFatLineRight(),
                                    size: 44,
                                  )
                                : null,
                            title: Text(
                              tracks[index].name,
                              style: FlutterDeckTheme.of(context)
                                  .textTheme
                                  .subtitle,
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
            gapH(kSpaceHuge * 4),
            Consumer(
              builder: (context, ref, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionButton(
                      text: "Pause",
                      iconData: PhosphorIcons.pause(),
                      onTap: () {
                        audioProvider.pause();
                      },
                    ),
                    ActionButton(
                      text: "Play",
                      iconData: PhosphorIcons.play(),
                      onTap: () async {
                        await play(tracks[ref.read(trackIndexProvider)]);
                      },
                      height: 88,
                    ),
                    ActionButton(
                      text: "Stop",
                      iconData: PhosphorIcons.stop(),
                      onTap: () {
                        audioProvider.stop();
                      },
                    ),
                    ActionButton(
                      text: "Skip",
                      iconData: PhosphorIcons.skipForward(),
                      onTap: () async {
                        int selectedIndex = ref.read(trackIndexProvider);
                        if (selectedIndex < tracks.length - 1) {
                          ref
                              .read(trackIndexProvider.notifier)
                              .update((state) => state + 1);
                        } else {
                          ref
                              .read(trackIndexProvider.notifier)
                              .update((state) => 0);
                        }
                        await play(tracks[ref.read(trackIndexProvider)]);
                      },
                    ),
                  ],
                );
              },
            )
          ],
        );
      },
    );
  }
}
