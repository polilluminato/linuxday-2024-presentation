// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubclient_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packageInfoHash() => r'834ae8b6390b3fa1088387db9e6c88fbe66ba2de';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [packageInfo].
@ProviderFor(packageInfo)
const packageInfoProvider = PackageInfoFamily();

/// See also [packageInfo].
class PackageInfoFamily extends Family<AsyncValue<PubPackage>> {
  /// See also [packageInfo].
  const PackageInfoFamily();

  /// See also [packageInfo].
  PackageInfoProvider call(
    String packageName,
  ) {
    return PackageInfoProvider(
      packageName,
    );
  }

  @override
  PackageInfoProvider getProviderOverride(
    covariant PackageInfoProvider provider,
  ) {
    return call(
      provider.packageName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'packageInfoProvider';
}

/// See also [packageInfo].
class PackageInfoProvider extends AutoDisposeFutureProvider<PubPackage> {
  /// See also [packageInfo].
  PackageInfoProvider(
    String packageName,
  ) : this._internal(
          (ref) => packageInfo(
            ref as PackageInfoRef,
            packageName,
          ),
          from: packageInfoProvider,
          name: r'packageInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$packageInfoHash,
          dependencies: PackageInfoFamily._dependencies,
          allTransitiveDependencies:
              PackageInfoFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  PackageInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.packageName,
  }) : super.internal();

  final String packageName;

  @override
  Override overrideWith(
    FutureOr<PubPackage> Function(PackageInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PackageInfoProvider._internal(
        (ref) => create(ref as PackageInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        packageName: packageName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PubPackage> createElement() {
    return _PackageInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageInfoProvider && other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PackageInfoRef on AutoDisposeFutureProviderRef<PubPackage> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _PackageInfoProviderElement
    extends AutoDisposeFutureProviderElement<PubPackage> with PackageInfoRef {
  _PackageInfoProviderElement(super.provider);

  @override
  String get packageName => (origin as PackageInfoProvider).packageName;
}

String _$packageScoreHash() => r'df853c1ecc3db6910d97569909736d0b0931e046';

/// See also [packageScore].
@ProviderFor(packageScore)
const packageScoreProvider = PackageScoreFamily();

/// See also [packageScore].
class PackageScoreFamily extends Family<AsyncValue<PackageScore?>> {
  /// See also [packageScore].
  const PackageScoreFamily();

  /// See also [packageScore].
  PackageScoreProvider call(
    String packageName,
  ) {
    return PackageScoreProvider(
      packageName,
    );
  }

  @override
  PackageScoreProvider getProviderOverride(
    covariant PackageScoreProvider provider,
  ) {
    return call(
      provider.packageName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'packageScoreProvider';
}

/// See also [packageScore].
class PackageScoreProvider extends AutoDisposeFutureProvider<PackageScore?> {
  /// See also [packageScore].
  PackageScoreProvider(
    String packageName,
  ) : this._internal(
          (ref) => packageScore(
            ref as PackageScoreRef,
            packageName,
          ),
          from: packageScoreProvider,
          name: r'packageScoreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$packageScoreHash,
          dependencies: PackageScoreFamily._dependencies,
          allTransitiveDependencies:
              PackageScoreFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  PackageScoreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.packageName,
  }) : super.internal();

  final String packageName;

  @override
  Override overrideWith(
    FutureOr<PackageScore?> Function(PackageScoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PackageScoreProvider._internal(
        (ref) => create(ref as PackageScoreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        packageName: packageName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PackageScore?> createElement() {
    return _PackageScoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageScoreProvider && other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PackageScoreRef on AutoDisposeFutureProviderRef<PackageScore?> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _PackageScoreProviderElement
    extends AutoDisposeFutureProviderElement<PackageScore?>
    with PackageScoreRef {
  _PackageScoreProviderElement(super.provider);

  @override
  String get packageName => (origin as PackageScoreProvider).packageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
