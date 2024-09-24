import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/models/allinfopackage_model.dart';
import 'package:linuxday_2024_presentation/provider/pubclient_provider.dart';
import 'package:linuxday_2024_presentation/ui/asyncvalue_widget.dart';

class PackageCard extends ConsumerWidget {
  const PackageCard({super.key, required this.package});

  final String package;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allInfoPackage = ref.watch(allInfoPackageProvider(package));

    return AsyncValueWidget<AllInfoPackage>(
      data: allInfoPackage,
      widget: (singlePackageAllInfo) {
        return Text(singlePackageAllInfo.package.description);
      },
    );
  }
}
