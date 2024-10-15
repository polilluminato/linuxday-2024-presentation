import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/styles/brand_colors.dart';
import 'package:linuxday_2024_presentation/styles/brand_theme.dart';
import 'package:linuxday_2024_presentation/styles/dimens.dart';
import 'package:linuxday_2024_presentation/ui/package_card.dart';
import 'package:linuxday_2024_presentation/ui/sidebar_column.dart';
import 'package:pluto_grid/pluto_grid.dart';

class TablesSlide extends FlutterDeckSlideWidget {
  TablesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/tables-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Tabelle',
            ),
          ),
        );

  final List<PlutoColumn> columns = [
    PlutoColumn(
        title: 'Name Surname',
        field: 'name_surname',
        type: PlutoColumnType.text()),
    PlutoColumn(title: 'Email', field: 'email', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Phone', field: 'phone', type: PlutoColumnType.text()),
    PlutoColumn(
        title: 'Address', field: 'address', type: PlutoColumnType.text()),
    PlutoColumn(
        title: 'Company', field: 'company', type: PlutoColumnType.text()),
  ];

  final faker = getIt<Faker>();

  @override
  FlutterDeckSlide build(BuildContext context) {
    final List<PlutoRow> rows = List<PlutoRow>.generate(50, (int index) {
      return PlutoRow(
        cells: {
          'name_surname': PlutoCell(
              value: "${faker.name.lastName()} ${faker.name.firstName()}"),
          'email': PlutoCell(value: faker.internet.email()),
          'phone': PlutoCell(value: faker.phoneNumber.phoneNumber()),
          'address': PlutoCell(
              value:
                  "${faker.address.streetAddress()}, ${faker.address.cityName()} (${faker.address.countryCode()})"),
          'company': PlutoCell(value: faker.company.companyName()),
        },
      );
    });

    return FlutterDeckSlide.split(
      splitRatio: getDefaultSplitSlideRatio(),
      leftBuilder: (context) {
        return const SidebarColumn(
          children: [
            PackageCard(package: "pluto_grid"),
          ],
        );
      },
      rightBuilder: (context) {
        return Container(
          padding: const EdgeInsets.all(30),
          child: PlutoGrid(
            configuration: const PlutoGridConfiguration(
              style: PlutoGridStyleConfig(
                gridBackgroundColor: kBackgroundColorLight,
                rowColor: kBackgroundColorLight,
                cellTextStyle: TextStyle(
                  color: kOnBackgroundColorLight,
                  fontSize: kFontSizePlutoGridRow,
                ),
                columnTextStyle: TextStyle(
                  fontSize: kFontSizePlutoGridColumn,
                  fontWeight: FontWeight.w600,
                ),
              ),
              columnSize: PlutoGridColumnSizeConfig(
                autoSizeMode: PlutoAutoSizeMode.scale,
              ),
            ),
            columns: columns,
            rows: rows,
          ),
        );
      },
    );
  }
}
