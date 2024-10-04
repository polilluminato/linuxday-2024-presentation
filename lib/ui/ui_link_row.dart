import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class UiLinkRow extends StatelessWidget {
  const UiLinkRow({
    super.key,
    required this.label,
    required this.link,
  });

  final String label;
  final String link;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => openExternalURL(link),
      icon: Icon(
        PhosphorIcons.linkSimple(),
        size: 24,
      ),
      label: Text(
        label,
        style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
