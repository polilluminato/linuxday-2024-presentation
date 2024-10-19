import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppExampleCard extends StatelessWidget {
  const AppExampleCard({
    super.key,
    required this.name,
    required this.url,
    required this.imageLink,
  });

  final String name;
  final String url;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context) * .3,
      decoration: getDefaultContainerDecoration(),
      padding: const EdgeInsets.all(kPaddingMain),
      child: Column(
        children: [
          Image.network(
            imageLink,
            width: getScreenWidth(context) * .3,
            fit: BoxFit.cover,
            height: getScreenHeight(context) * .25,
          ),
          gapH(kSpaceMain),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
              ),
              IconButton(
                onPressed: () => openExternalURL(
                  url,
                ),
                icon: Icon(
                  PhosphorIcons.linkSimple(),
                  size: 24,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
