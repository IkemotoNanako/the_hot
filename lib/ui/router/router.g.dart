// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $topPageRoute,
      $signInPageRoute,
    ];

RouteBase get $topPageRoute => GoRouteData.$route(
      path: '/top_page',
      factory: $TopPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'question',
          factory: $QuestionPageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'answer',
              factory: $AnswerPageRouteExtension._fromState,
            ),
          ],
        ),
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

extension $TopPageRouteExtension on TopPageRoute {
  static TopPageRoute _fromState(GoRouterState state) => const TopPageRoute();

  String get location => GoRouteData.$location(
        '/top_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuestionPageRouteExtension on QuestionPageRoute {
  static QuestionPageRoute _fromState(GoRouterState state) =>
      const QuestionPageRoute();

  String get location => GoRouteData.$location(
        '/top_page/question',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnswerPageRouteExtension on AnswerPageRoute {
  static AnswerPageRoute _fromState(GoRouterState state) =>
      const AnswerPageRoute();

  String get location => GoRouteData.$location(
        '/top_page/question/answer',
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
        '/top_page/create_todo',
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
        '/top_page/debug',
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
        '/top_page/debug/text_style',
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

String _$appRouterHash() => r'ed3b1f5cc1ce16c1b20db9abc686928c64bf791b';

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
