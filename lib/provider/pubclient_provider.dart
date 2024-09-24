import 'package:linuxday_2024_presentation/models/allinfopackage_model.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/repository/pubdev_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pubclient_provider.g.dart';

@riverpod
Future<AllInfoPackage> allInfoPackage(
    AllInfoPackageRef ref, String packageName) async {
  return AllInfoPackage(
      package: await getIt<PubDevRepository>().getPackageInfo(packageName),
      packageScore:
          await getIt<PubDevRepository>().getPackageScore(packageName));
}
