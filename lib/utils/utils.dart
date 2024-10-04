import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

gapH(double height) => SizedBox(height: height);

gapW(double width) => SizedBox(width: width);

double getScreenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

double getScreenHeight(BuildContext context) =>
    MediaQuery.sizeOf(context).height;

//Open the browser with the url provided
void openExternalURL(String urlToLaunch) async {
  if (!await launchUrl(
    Uri.parse(urlToLaunch),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $urlToLaunch');
  }
}
