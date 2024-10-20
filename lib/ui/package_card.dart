import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/models/allinfopackage_model.dart';
import 'package:linuxday_2024_presentation/provider/pubclient_provider.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/asyncvalue_widget.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PackageCard extends ConsumerWidget {
  const PackageCard(
      {super.key, required this.package, this.width = double.infinity});

  final String package;
  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allInfoPackage = ref.watch(allInfoPackageProvider(package));
    TextTheme textTheme = Theme.of(context).textTheme;

    return AsyncValueWidget<AllInfoPackage>(
      data: allInfoPackage,
      widget: (singlePackageAllInfo) {
        return Container(
          width: width,
          decoration: getDefaultContainerDecoration(),
          padding: const EdgeInsets.all(kPaddingMain),
          margin: const EdgeInsets.only(bottom: kMarginHuge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                singlePackageAllInfo.package.name,
                style: textTheme.headlineLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "version: ${singlePackageAllInfo.package.version}",
                    style: textTheme.bodyLarge,
                  ),
                  IconButton(
                    onPressed: () => openExternalURL(
                      singlePackageAllInfo.package.url,
                    ),
                    icon: Icon(
                      PhosphorIcons.linkSimple(),
                      size: 24,
                    ),
                  )
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Icon(
                    PhosphorIcons.thumbsUp(),
                    size: 24,
                  ),
                  gapW(kSpaceSmall),
                  Text(
                    singlePackageAllInfo.packageScore!.likeCount.toString(),
                    style: textTheme.headlineSmall,
                  ),
                  const Spacer(),
                  Icon(
                    PhosphorIcons.sparkle(),
                    size: 24,
                  ),
                  gapW(kSpaceSmall),
                  Text(
                    singlePackageAllInfo.packageScore!.grantedPoints.toString(),
                    style: textTheme.headlineSmall,
                  ),
                  const Spacer(),
                  Icon(
                    PhosphorIcons.users(),
                    size: 24,
                  ),
                  gapW(kSpaceSmall),
                  Text(
                    (singlePackageAllInfo.packageScore!.popularityScore! * 100)
                        .ceil()
                        .toInt()
                        .toString(),
                    style: textTheme.headlineSmall,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
