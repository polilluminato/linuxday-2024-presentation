import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/slides/database/database.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DatabaseSingleCard extends StatelessWidget {
  const DatabaseSingleCard({super.key, required this.addressBookData});

  final AddressBookData addressBookData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getDefaultContainerDecoration(),
      width: getScreenWidth(context) * .22,
      padding: const EdgeInsets.all(kPaddingSmall),
      child: ListTile(
        leading: Icon(
          PhosphorIcons.userCircle(),
          size: 48,
        ),
        title: Text(
          "${addressBookData.surname} ${addressBookData.name}",
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          "Email: ${addressBookData.email}\nPhone: ${addressBookData.phone}",
          style: FlutterDeckTheme.of(context).textTheme.bodySmall,
        ),
        trailing: Icon(
          PhosphorIcons.phone(),
          size: 24,
        ),
      ),
    );
  }
}
