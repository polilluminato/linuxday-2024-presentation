// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubclient_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allInfoPackageHash() => r'96c9270ac7ac5c548b94a2ba7d0072399170a711';

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

/// See also [allInfoPackage].
@ProviderFor(allInfoPackage)
const allInfoPackageProvider = AllInfoPackageFamily();

/// See also [allInfoPackage].
class AllInfoPackageFamily extends Family<AsyncValue<AllInfoPackage>> {
  /// See also [allInfoPackage].
  const AllInfoPackageFamily();

  /// See also [allInfoPackage].
  AllInfoPackageProvider call(
    String packageName,
  ) {
    return AllInfoPackageProvider(
      packageName,
    );
  }

  @override
  AllInfoPackageProvider getProviderOverride(
    covariant AllInfoPackageProvider provider,
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
  String? get name => r'allInfoPackageProvider';
}

/// See also [allInfoPackage].
class AllInfoPackageProvider extends AutoDisposeFutureProvider<AllInfoPackage> {
  /// See also [allInfoPackage].
  AllInfoPackageProvider(
    String packageName,
  ) : this._internal(
          (ref) => allInfoPackage(
            ref as AllInfoPackageRef,
            packageName,
          ),
          from: allInfoPackageProvider,
          name: r'allInfoPackageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$allInfoPackageHash,
          dependencies: AllInfoPackageFamily._dependencies,
          allTransitiveDependencies:
              AllInfoPackageFamily._allTransitiveDependencies,
          packageName: packageName,
        );

  AllInfoPackageProvider._internal(
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
    FutureOr<AllInfoPackage> Function(AllInfoPackageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AllInfoPackageProvider._internal(
        (ref) => create(ref as AllInfoPackageRef),
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
  AutoDisposeFutureProviderElement<AllInfoPackage> createElement() {
    return _AllInfoPackageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AllInfoPackageProvider && other.packageName == packageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AllInfoPackageRef on AutoDisposeFutureProviderRef<AllInfoPackage> {
  /// The parameter `packageName` of this provider.
  String get packageName;
}

class _AllInfoPackageProviderElement
    extends AutoDisposeFutureProviderElement<AllInfoPackage>
    with AllInfoPackageRef {
  _AllInfoPackageProviderElement(super.provider);

  @override
  String get packageName => (origin as AllInfoPackageProvider).packageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
