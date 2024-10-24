import 'package:flutter/material.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
    this.width = 250,
    this.height = 64,
  });

  final String text;
  final IconData iconData;
  final VoidCallback onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(kPaddingMain),
        decoration: BoxDecoration(
          color: kButtonBackgroundColor,
          borderRadius: kBorderRadiusMain,
        ),
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              iconData,
              size: 32,
              color: kButtonForegroundColor,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kButtonForegroundColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
