import 'package:flutter/material.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';

class SocialLink extends StatelessWidget {
  const SocialLink({
    super.key,
    required this.icon,
    this.link,
    this.size,
  });

  final IconData icon;
  final String? link;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openExternalURL(link!),
      child: Container(
        decoration: getDefaultContainerDecoration(),
        padding: const EdgeInsets.all(kPaddingSmall),
        child: Icon(
          icon,
          size: size ?? getScreenWidth(context) * .025,
        ),
      ),
    );
  }
}
