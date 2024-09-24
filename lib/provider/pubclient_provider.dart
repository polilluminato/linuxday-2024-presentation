import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/repository/pubdev_repository.dart';
import 'package:pub_api_client/pub_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pubclient_provider.g.dart';

@riverpod
Future<PubPackage> packageInfo(PackageInfoRef ref, String packageName) async {
  return await getIt<PubDevRepository>().getPackageInfo(packageName);
}

@riverpod
Future<PackageScore?> packageScore(
    PackageScoreRef ref, String packageName) async {
  return await getIt<PubDevRepository>().getPackageScore(packageName);
}
