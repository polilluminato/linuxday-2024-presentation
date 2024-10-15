import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class AddressBook extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().named('name')();
  TextColumn get surname => text().named('surname')();
  TextColumn get phone => text().named('phone')();
  TextColumn get email => text().named('email')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@DriftDatabase(tables: [AddressBook])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // driftDatabase from package:drift_flutter stores the database in
    // getApplicationDocumentsDirectory().
    return driftDatabase(name: 'my_database');
  }
}
