// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sampleRepositoryHash() => r'4f019b32d1e2d078871325de48fcda93d491fee0';

/// See also [sampleRepository].
@ProviderFor(sampleRepository)
final sampleRepositoryProvider = AutoDisposeProvider<SampleRepository>.internal(
  sampleRepository,
  name: r'sampleRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sampleRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SampleRepositoryRef = AutoDisposeProviderRef<SampleRepository>;
String _$authRepositoryHash() => r'e3b22fd7863ea1be0b322870da43112c60f80087';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepository>;
String _$commonRepositoryHash() => r'62b387c8a448aa5763b86ffe9f21b2d3aa29b408';

/// See also [commonRepository].
@ProviderFor(commonRepository)
final commonRepositoryProvider = Provider<CommonRepository>.internal(
  commonRepository,
  name: r'commonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$commonRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommonRepositoryRef = ProviderRef<CommonRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
