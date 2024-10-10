import 'package:flutter/material.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
  });

  final String text;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(kPaddingMain),
        decoration: BoxDecoration(
          color: kAccentColorBlack,
          borderRadius: kBorderRadiusSmall,
        ),
        width: getScreenWidth(context) * .15,
        height: getScreenHeight(context) * .1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconData, size: 32),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
