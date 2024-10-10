import 'package:flutter/material.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/ui_link_row.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeLink extends StatelessWidget {
  const QrCodeLink({
    super.key,
    required this.link,
  });

  final String link;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: kMarginHuge,
            bottom: kMarginMain,
          ),
          padding: const EdgeInsets.all(
            kPaddingMain,
          ),
          decoration: BoxDecoration(
            borderRadius: kBorderRadiusMain,
            color: Colors.white,
          ),
          child: QrImageView(
            data: link,
            version: QrVersions.auto,
            size: getScreenWidth(context) * 0.18,
          ),
        ),
        const SizedBox(
          height: kMarginMain,
        ),
        UiLinkRow(
          label: link,
          link: link,
        ),
      ],
    );
  }
}
