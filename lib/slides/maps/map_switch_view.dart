import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class MapSwitchView extends ConsumerWidget {
  const MapSwitchView({
    super.key,
    required this.title,
    required this.provider,
  });

  final String title;
  final StateProvider<bool> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: getScreenWidth(context) * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Switch.adaptive(
            value: ref.watch(provider),
            onChanged: (value) =>
                {ref.read(provider.notifier).update((state) => value)},
          ),
          Text(
            title,
            style: FlutterDeckTheme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
