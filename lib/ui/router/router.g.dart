// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $sampleRoute,
      $signInPageRoute,
    ];

RouteBase get $sampleRoute => GoRouteData.$route(
      path: '/sample',
      factory: $SampleRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'create_todo',
          factory: $CreateTodoRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'debug',
          factory: $DebugPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'text_style',
              factory: $DebugTextStyleRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SampleRouteExtension on SampleRoute {
  static SampleRoute _fromState(GoRouterState state) => const SampleRoute();

  String get location => GoRouteData.$location(
        '/sample',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreateTodoRouteExtension on CreateTodoRoute {
  static CreateTodoRoute _fromState(GoRouterState state) =>
      const CreateTodoRoute();

  String get location => GoRouteData.$location(
        '/sample/create_todo',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DebugPageRouteExtension on DebugPageRoute {
  static DebugPageRoute _fromState(GoRouterState state) =>
      const DebugPageRoute();

  String get location => GoRouteData.$location(
        '/sample/debug',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DebugTextStyleRouteExtension on DebugTextStyleRoute {
  static DebugTextStyleRoute _fromState(GoRouterState state) =>
      const DebugTextStyleRoute();

  String get location => GoRouteData.$location(
        '/sample/debug/text_style',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInPageRoute => GoRouteData.$route(
      path: '/sign_in',
      factory: $SignInPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sign_up',
          factory: $SignUpPageRouteExtension._fromState,
        ),
      ],
    );

extension $SignInPageRouteExtension on SignInPageRoute {
  static SignInPageRoute _fromState(GoRouterState state) =>
      const SignInPageRoute();

  String get location => GoRouteData.$location(
        '/sign_in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpPageRouteExtension on SignUpPageRoute {
  static SignUpPageRoute _fromState(GoRouterState state) =>
      const SignUpPageRoute();

  String get location => GoRouteData.$location(
        '/sign_in/sign_up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appRouterHash() => r'aae6dee3231ac9bbf1f32291d1801aebdcc71b1d';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = AutoDisposeProviderRef<GoRouter>;
String _$signedInNotifierHash() => r'0f220f40781fc49bf4f1a67996d1eb063a0f7a70';

/// See also [_signedInNotifier].
@ProviderFor(_signedInNotifier)
final _signedInNotifierProvider =
    AutoDisposeProvider<Raw<_SignedInNotifier>>.internal(
  _signedInNotifier,
  name: r'_signedInNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signedInNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _SignedInNotifierRef = AutoDisposeProviderRef<Raw<_SignedInNotifier>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
