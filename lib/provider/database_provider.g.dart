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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllAddressBookRef = AutoDisposeFutureProviderRef<List<AddressBookData>>;
String _$addRandomAddressBookHash() =>
    r'a83787c8153d1f78f129649324d158890f154bae';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AddRandomAddressBookRef = AutoDisposeFutureProviderRef<void>;
String _$deleteOldestAddressBookHash() =>
    r'aa2f1dd85e2063a6e594f0f206d7929fc3f1e7ce';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeleteOldestAddressBookRef = AutoDisposeFutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
