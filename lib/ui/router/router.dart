import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/page/answer_page.dart';
import 'package:flutter_hackathon_2024/ui/page/create_todo_page.dart';
import 'package:flutter_hackathon_2024/ui/page/debug/debug_page.dart';
import 'package:flutter_hackathon_2024/ui/page/debug/debug_text_style_page.dart';
import 'package:flutter_hackathon_2024/ui/page/graph_page.dart';
import 'package:flutter_hackathon_2024/ui/page/question_page.dart';
import 'package:flutter_hackathon_2024/ui/page/sample_page.dart';
import 'package:flutter_hackathon_2024/ui/page/sign_in_page.dart';
import 'package:flutter_hackathon_2024/ui/page/sign_up_page.dart';
import 'package:flutter_hackathon_2024/ui/page/top_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  // final unsignedInRouteLocations = [
  //   // const SignInPageRoute().location,
  //   // const SignUpPageRoute().location,
  // ];

  /// サインイン状態を監視する
  final signedInNotifier = ref.watch(_signedInNotifierProvider);

  final router = GoRouter(
    routes: $appRoutes,
    initialLocation: const TopPageRoute().location,
    refreshListenable: signedInNotifier,
    // redirect: (context, state) {
    // final currentLocation = state.matchedLocation;
    // if (!signedInNotifier.value) {
    //   if (!unsignedInRouteLocations.contains(currentLocation)) {
    //     return const SignInPageRoute().location;
    //   }
    // } else {
    //   if (unsignedInRouteLocations.contains(currentLocation)) {
    //     return const TopPageRoute().location;
    //   }
    // }
    // return const TopPageRoute().location;
    // },
  );

  return router;
}

@TypedGoRoute<TopPageRoute>(path: '/top_page', routes: [
  TypedGoRoute<GraphRoute>(path: 'graph'),
  TypedGoRoute<QuestionPageRoute>(path: 'question', routes: [
    TypedGoRoute<AnswerPageRoute>(path: 'answer'),
  ]),
  TypedGoRoute<CreateTodoRoute>(path: 'create_todo'),
  TypedGoRoute<DebugPageRoute>(path: 'debug', routes: [
    TypedGoRoute<DebugTextStyleRoute>(path: 'text_style'),
  ]),
])
class TopPageRoute extends GoRouteData {
  const TopPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const TopPage();
}

class GraphRoute extends GoRouteData {
  const GraphRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const GraphPage();
}

class QuestionPageRoute extends GoRouteData {
  const QuestionPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const QuestionPage();
}

class AnswerPageRoute extends GoRouteData {
  const AnswerPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AnswerPage();
}

class SampleRoute extends GoRouteData {
  const SampleRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SamplePage();
}

class CreateTodoRoute extends GoRouteData {
  const CreateTodoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CreateTodoPage();
}

class DebugPageRoute extends GoRouteData {
  const DebugPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DebugPage();
}

class DebugTextStyleRoute extends GoRouteData {
  const DebugTextStyleRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DebugTextStylePage();
}

@TypedGoRoute<SignInPageRoute>(path: '/sign_in', routes: [
  TypedGoRoute<SignUpPageRoute>(path: 'sign_up'),
])
class SignInPageRoute extends GoRouteData {
  const SignInPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInPage();
}

class SignUpPageRoute extends GoRouteData {
  const SignUpPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpPage();
}

@riverpod
Raw<_SignedInNotifier> _signedInNotifier(Ref ref) {
  return _SignedInNotifier(ref);
}

class _SignedInNotifier extends ValueNotifier<bool> {
  _SignedInNotifier(Ref ref) : super(false) {
    Supabase.instance.client.auth.onAuthStateChange.listen((state) {
      value = state.session != null;
    });
  }
}
