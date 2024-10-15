import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linuxday_2024_presentation/provider/database_provider.dart';
import 'package:linuxday_2024_presentation/slides/database/database.dart';
import 'package:linuxday_2024_presentation/slides/database/database_single_card.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/action_button.dart';
import 'package:linuxday_2024_presentation/ui/asyncvalue_widget.dart';
import 'package:linuxday_2024_presentation/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DatabaseView extends ConsumerWidget {
  const DatabaseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allRowsAddressBook = ref.watch(allAddressBookProvider);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ActionButton(
                text: "Add Random",
                iconData: PhosphorIcons.userCirclePlus(),
                onTap: () async {
                  ref.read(addRandomAddressBookProvider);
                },
                height: 60,
              ),
              gapW(kSpaceBig),
              ActionButton(
                text: "Delete First",
                iconData: PhosphorIcons.userCircleMinus(),
                onTap: () async {
                  ref.read(deleteOldestAddressBookProvider);
                },
                height: 60,
              ),
            ],
          ),
          gapH(kSpaceBig),
          AsyncValueWidget<List<AddressBookData>>(
            data: allRowsAddressBook,
            widget: (allRows) {
              return Wrap(
                spacing: kSpaceHuge,
                runSpacing: kSpaceHuge,
                runAlignment: WrapAlignment.spaceEvenly,
                children: allRows
                    .map(
                      (singleRow) => DatabaseSingleCard(
                        addressBookData: singleRow,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
