// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: require_trailing_commas, non_constant_identifier_names, cast_nullable_to_non_nullable, lines_longer_than_80_chars, unnecessary_null_checks, strict_raw_type

part of 'mol_trip_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$molTripsHash() => r'03f0ddaa5d90b9c99893edad95b9d74802a8fbab';

/// See also [molTrips].
@ProviderFor(molTrips)
final molTripsProvider = AutoDisposeFutureProvider<List<MolTrip>>.internal(
  molTrips,
  name: r'molTripsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$molTripsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MolTripsRef = AutoDisposeFutureProviderRef<List<MolTrip>>;
String _$molTripEmbedHtmlHash() => r'7621878486191f49a97615e3447741cf96a41c88';

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

/// See also [molTripEmbedHtml].
@ProviderFor(molTripEmbedHtml)
const molTripEmbedHtmlProvider = MolTripEmbedHtmlFamily();

/// See also [molTripEmbedHtml].
class MolTripEmbedHtmlFamily extends Family<AsyncValue<String>> {
  /// See also [molTripEmbedHtml].
  const MolTripEmbedHtmlFamily();

  /// See also [molTripEmbedHtml].
  MolTripEmbedHtmlProvider call({
    required String uri,
  }) {
    return MolTripEmbedHtmlProvider(
      uri: uri,
    );
  }

  @override
  MolTripEmbedHtmlProvider getProviderOverride(
    covariant MolTripEmbedHtmlProvider provider,
  ) {
    return call(
      uri: provider.uri,
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
  String? get name => r'molTripEmbedHtmlProvider';
}

/// See also [molTripEmbedHtml].
class MolTripEmbedHtmlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [molTripEmbedHtml].
  MolTripEmbedHtmlProvider({
    required String uri,
  }) : this._internal(
          (ref) => molTripEmbedHtml(
            ref as MolTripEmbedHtmlRef,
            uri: uri,
          ),
          from: molTripEmbedHtmlProvider,
          name: r'molTripEmbedHtmlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$molTripEmbedHtmlHash,
          dependencies: MolTripEmbedHtmlFamily._dependencies,
          allTransitiveDependencies:
              MolTripEmbedHtmlFamily._allTransitiveDependencies,
          uri: uri,
        );

  MolTripEmbedHtmlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uri,
  }) : super.internal();

  final String uri;

  @override
  Override overrideWith(
    FutureOr<String> Function(MolTripEmbedHtmlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MolTripEmbedHtmlProvider._internal(
        (ref) => create(ref as MolTripEmbedHtmlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uri: uri,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _MolTripEmbedHtmlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MolTripEmbedHtmlProvider && other.uri == uri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uri.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MolTripEmbedHtmlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `uri` of this provider.
  String get uri;
}

class _MolTripEmbedHtmlProviderElement
    extends AutoDisposeFutureProviderElement<String> with MolTripEmbedHtmlRef {
  _MolTripEmbedHtmlProviderElement(super.provider);

  @override
  String get uri => (origin as MolTripEmbedHtmlProvider).uri;
}

String _$molTripEmbedHtmlListHash() =>
    r'f8e3e2799e423b6d39c7808abfe143dec72359e1';

/// See also [molTripEmbedHtmlList].
@ProviderFor(molTripEmbedHtmlList)
const molTripEmbedHtmlListProvider = MolTripEmbedHtmlListFamily();

/// See also [molTripEmbedHtmlList].
class MolTripEmbedHtmlListFamily extends Family<AsyncValue<List<String>>> {
  /// See also [molTripEmbedHtmlList].
  const MolTripEmbedHtmlListFamily();

  /// See also [molTripEmbedHtmlList].
  MolTripEmbedHtmlListProvider call(
    List<String> uris,
  ) {
    return MolTripEmbedHtmlListProvider(
      uris,
    );
  }

  @override
  MolTripEmbedHtmlListProvider getProviderOverride(
    covariant MolTripEmbedHtmlListProvider provider,
  ) {
    return call(
      provider.uris,
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
  String? get name => r'molTripEmbedHtmlListProvider';
}

/// See also [molTripEmbedHtmlList].
class MolTripEmbedHtmlListProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [molTripEmbedHtmlList].
  MolTripEmbedHtmlListProvider(
    List<String> uris,
  ) : this._internal(
          (ref) => molTripEmbedHtmlList(
            ref as MolTripEmbedHtmlListRef,
            uris,
          ),
          from: molTripEmbedHtmlListProvider,
          name: r'molTripEmbedHtmlListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$molTripEmbedHtmlListHash,
          dependencies: MolTripEmbedHtmlListFamily._dependencies,
          allTransitiveDependencies:
              MolTripEmbedHtmlListFamily._allTransitiveDependencies,
          uris: uris,
        );

  MolTripEmbedHtmlListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uris,
  }) : super.internal();

  final List<String> uris;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(MolTripEmbedHtmlListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MolTripEmbedHtmlListProvider._internal(
        (ref) => create(ref as MolTripEmbedHtmlListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uris: uris,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _MolTripEmbedHtmlListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MolTripEmbedHtmlListProvider && other.uris == uris;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uris.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MolTripEmbedHtmlListRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `uris` of this provider.
  List<String> get uris;
}

class _MolTripEmbedHtmlListProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with MolTripEmbedHtmlListRef {
  _MolTripEmbedHtmlListProviderElement(super.provider);

  @override
  List<String> get uris => (origin as MolTripEmbedHtmlListProvider).uris;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
