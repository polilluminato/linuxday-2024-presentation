import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

final logoFlutterProvider = StateProvider<bool>((ref) => false);
final circleProvider = StateProvider<bool>((ref) => false);
final tuxProvider = StateProvider<bool>((ref) => false);
final windowsProvider = StateProvider<bool>((ref) => false);
final appleProvider = StateProvider<bool>((ref) => false);

class MapsSlide extends FlutterDeckSlideWidget {
  const MapsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/maps-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Mappe',
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
            PackageCard(package: "flutter_map"),
          ],
        );
      },
      rightBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      icon: Switch.adaptive(
                        value: ref.watch(logoFlutterProvider),
                        onChanged: (value) => {},
                      ),
                      label: const Text('Marker Flutter'),
                      onPressed: () => ref
                          .read(logoFlutterProvider.notifier)
                          .update((state) => !state),
                    ),
                    TextButton.icon(
                      icon: Switch.adaptive(
                        value: ref.watch(tuxProvider),
                        onChanged: (value) => {},
                      ),
                      label: const Text('Friends marker'),
                      onPressed: () => ref
                          .read(tuxProvider.notifier)
                          .update((state) => !state),
                    ),
                    TextButton.icon(
                      icon: Switch.adaptive(
                        value: ref.watch(circleProvider),
                        onChanged: (value) => {},
                      ),
                      label: const Text('Circle layer'),
                      onPressed: () => ref
                          .read(circleProvider.notifier)
                          .update((state) => !state),
                    ),
                    TextButton.icon(
                      icon: Switch.adaptive(
                        value: ref.watch(windowsProvider),
                        onChanged: (value) => {},
                      ),
                      label: const Text('Enemy n°1'),
                      onPressed: () => ref
                          .read(windowsProvider.notifier)
                          .update((state) => !state),
                    ),
                    TextButton.icon(
                      icon: Switch.adaptive(
                        value: ref.watch(appleProvider),
                        onChanged: (value) => {},
                      ),
                      label: const Text('Enemy n°2'),
                      onPressed: () => ref
                          .read(appleProvider.notifier)
                          .update((state) => !state),
                    ),
                  ],
                );
              },
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kPaddingMain,
                vertical: kPaddingMain,
              ),
              width: double.infinity,
              height: getScreenHeight(context) * .7,
              child: FlutterMap(
                options: const MapOptions(
                  initialCenter: LatLng(45.5180582, 9.2132089),
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName:
                        'com.albertobonacina.linuxday_2024_presentation',
                    //maxZoom: 10,
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      return CircleLayer(
                        circles: [
                          ref.watch(circleProvider)
                              ? CircleMarker(
                                  point: const LatLng(45.5183, 9.2134),
                                  radius: 150,
                                  useRadiusInMeter: true,
                                  color: kAccentColor.withOpacity(0.8),
                                  borderColor: kAccentColorBlack,
                                  borderStrokeWidth: 3,
                                )
                              : const CircleMarker(
                                  point: LatLng(0, 0),
                                  radius: 0,
                                )
                        ],
                      );
                    },
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      return MarkerLayer(
                        markers: [
                          //Logo Flutter su Edificio U6
                          ref.watch(logoFlutterProvider)
                              ? const Marker(
                                  width: 75,
                                  height: 75,
                                  point: LatLng(45.518, 9.213),
                                  child: FlutterLogo(),
                                )
                              : const Marker(
                                  point: LatLng(0, 0),
                                  child: SizedBox.shrink(),
                                ),
                          ref.watch(tuxProvider)
                              ? Marker(
                                  width: 70,
                                  height: 70,
                                  point: const LatLng(45.519, 9.2135),
                                  child: Image.asset("assets/images/tux.png"),
                                )
                              : const Marker(
                                  point: LatLng(0, 0),
                                  child: SizedBox.shrink(),
                                ),
                          ref.watch(windowsProvider)
                              ? Marker(
                                  width: 70,
                                  height: 70,
                                  point: const LatLng(45.5175, 9.209),
                                  child:
                                      Image.asset("assets/images/windows.png"),
                                )
                              : const Marker(
                                  point: LatLng(0, 0),
                                  child: SizedBox.shrink(),
                                ),
                          ref.watch(appleProvider)
                              ? Marker(
                                  width: 70,
                                  height: 70,
                                  point: const LatLng(45.519, 9.217),
                                  child: Image.asset("assets/images/apple.png"),
                                )
                              : const Marker(
                                  point: LatLng(0, 0),
                                  child: SizedBox.shrink(),
                                ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  /*List<Marker> _getTuxMarkerList() {
    return [
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5175, 9.2125),
        child: Image.asset("assets/images/tux.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5192, 9.2129),
        child: Image.asset("assets/images/tux.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5183, 9.2120),
        child: Image.asset("assets/images/tux.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5188, 9.2145),
        child: Image.asset("assets/images/tux.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5177, 9.2143),
        child: Image.asset("assets/images/tux.png"),
      ),
    ];
  }*/

  /*List<Marker> _getWindowsMarkerList() {
    return [
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.516, 9.21),
        child: Image.asset("assets/images/windows.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5212, 9.212),
        child: Image.asset("assets/images/windows.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.518, 9.2090),
        child: Image.asset("assets/images/windows.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5155, 9.212),
        child: Image.asset("assets/images/windows.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.520, 9.210),
        child: Image.asset("assets/images/windows.png"),
      ),
    ];
  }*/

  /*List<Marker> _getAppleMarkerList() {
    return [
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5172, 9.2177),
        child: Image.asset("assets/images/apple.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5208, 9.216),
        child: Image.asset("assets/images/apple.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.519, 9.217),
        child: Image.asset("assets/images/apple.png"),
      ),
      Marker(
        width: 70,
        height: 70,
        point: const LatLng(45.5158, 9.2149),
        child: Image.asset("assets/images/apple.png"),
      ),
    ];
  }*/
}
