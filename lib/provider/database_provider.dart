import 'package:drift/drift.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:linuxday_2024_presentation/provider/service_locator.dart';
import 'package:linuxday_2024_presentation/slides/database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_provider.g.dart';

@riverpod
AppDatabase database(DatabaseRef ref) {
  return AppDatabase();
}

@riverpod
Future<List<AddressBookData>> allAddressBook(AllAddressBookRef ref) async {
  final database = ref.watch(databaseProvider);
  return await database.select(database.addressBook).get();
}

@riverpod
Future<void> addRandomAddressBook(AddRandomAddressBookRef ref) async {
  final database = ref.watch(databaseProvider);
  final faker = getIt<Faker>();
  await database.into(database.addressBook).insert(
        AddressBookCompanion.insert(
          name: faker.name.firstName(),
          surname: faker.name.lastName(),
          phone: faker.phoneNumber.phoneNumber(),
          email: faker.internet.email(),
        ),
      );
  ref.invalidate(allAddressBookProvider);
}

@riverpod
Future<void> deleteOldestAddressBook(DeleteOldestAddressBookRef ref) async {
  final database = ref.watch(databaseProvider);
  final oldest = await (database.select(database.addressBook)
        ..orderBy([(t) => OrderingTerm(expression: t.id)])
        ..limit(1))
      .getSingle();

  await database.delete(database.addressBook).delete(oldest);
  ref.invalidate(allAddressBookProvider);
}
