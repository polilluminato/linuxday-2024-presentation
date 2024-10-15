// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'64e68ef891caef3da1e4e2621a495f73a5ce2a50';

/// See also [database].
@ProviderFor(database)
final databaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  database,
  name: r'databaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DatabaseRef = AutoDisposeProviderRef<AppDatabase>;
String _$allAddressBookHash() => r'99fc875270128b2830313e8df9cea93f07480b74';

/// See also [allAddressBook].
@ProviderFor(allAddressBook)
final allAddressBookProvider =
    AutoDisposeFutureProvider<List<AddressBookData>>.internal(
  allAddressBook,
  name: r'allAddressBookProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allAddressBookHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllAddressBookRef = AutoDisposeFutureProviderRef<List<AddressBookData>>;
String _$addRandomAddressBookHash() =>
    r'1f17e5817eb7c5509e42583a3591c71cc74b76c1';

/// See also [addRandomAddressBook].
@ProviderFor(addRandomAddressBook)
final addRandomAddressBookProvider = AutoDisposeFutureProvider<void>.internal(
  addRandomAddressBook,
  name: r'addRandomAddressBookProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addRandomAddressBookHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddRandomAddressBookRef = AutoDisposeFutureProviderRef<void>;
String _$deleteOldestAddressBookHash() =>
    r'cabaaca01e272684e6f5258ceec7ec30d1a3d6c5';

/// See also [deleteOldestAddressBook].
@ProviderFor(deleteOldestAddressBook)
final deleteOldestAddressBookProvider =
    AutoDisposeFutureProvider<void>.internal(
  deleteOldestAddressBook,
  name: r'deleteOldestAddressBookProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$deleteOldestAddressBookHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeleteOldestAddressBookRef = AutoDisposeFutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
