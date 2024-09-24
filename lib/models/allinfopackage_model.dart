import 'package:pub_api_client/pub_api_client.dart';

class AllInfoPackage {
  final PubPackage package;
  final PackageScore? packageScore;

  AllInfoPackage({
    required this.package,
    required this.packageScore,
  });
}
