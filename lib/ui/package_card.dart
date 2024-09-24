import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/provider/pubclient_provider.dart';
import 'package:linuxday_2024_presentation/ui/asyncvalue_widget.dart';
import 'package:pub_api_client/pub_api_client.dart';

class PackageCard extends ConsumerWidget {
  const PackageCard({super.key, required this.package});

  final String package;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.watch(packageInfoProvider(package));
    final packageScore = ref.watch(packageScoreProvider(package));

    return AsyncValueWidget<PubPackage>(
      data: packageInfo,
      widget: (singlePackageInfo) {
        return Text(singlePackageInfo.description);
      },
    );
  }
}
