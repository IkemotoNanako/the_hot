// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_game.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageHash() => r'96176e319585d562afdbd468e37a2e166e0ce589';

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

/// See also [image].
@ProviderFor(image)
const imageProvider = ImageFamily();

/// See also [image].
class ImageFamily extends Family<AsyncValue<ui.Image>> {
  /// See also [image].
  const ImageFamily();

  /// See also [image].
  ImageProvider call({
    required String imageUrl,
  }) {
    return ImageProvider(
      imageUrl: imageUrl,
    );
  }

  @override
  ImageProvider getProviderOverride(
    covariant ImageProvider provider,
  ) {
    return call(
      imageUrl: provider.imageUrl,
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
  String? get name => r'imageProvider';
}

/// See also [image].
class ImageProvider extends FutureProvider<ui.Image> {
  /// See also [image].
  ImageProvider({
    required String imageUrl,
  }) : this._internal(
          (ref) => image(
            ref as ImageRef,
            imageUrl: imageUrl,
          ),
          from: imageProvider,
          name: r'imageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageHash,
          dependencies: ImageFamily._dependencies,
          allTransitiveDependencies: ImageFamily._allTransitiveDependencies,
          imageUrl: imageUrl,
        );

  ImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageUrl,
  }) : super.internal();

  final String imageUrl;

  @override
  Override overrideWith(
    FutureOr<ui.Image> Function(ImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageProvider._internal(
        (ref) => create(ref as ImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageUrl: imageUrl,
      ),
    );
  }

  @override
  FutureProviderElement<ui.Image> createElement() {
    return _ImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageProvider && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ImageRef on FutureProviderRef<ui.Image> {
  /// The parameter `imageUrl` of this provider.
  String get imageUrl;
}

class _ImageProviderElement extends FutureProviderElement<ui.Image>
    with ImageRef {
  _ImageProviderElement(super.provider);

  @override
  String get imageUrl => (origin as ImageProvider).imageUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
