import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:pub_api_client/pub_api_client.dart';

class PubDevRepository {
  final PubClient pubClient = getIt<PubClient>();

  PubDevRepository();

  Future<PubPackage> getPackageInfo(String packageName) async {
    return await getIt<PubClient>().packageInfo(packageName);
  }

  Future<PackageScore?> getPackageScore(String packageName) async {
    return await getIt<PubClient>().packageScore(packageName);
  }
}
