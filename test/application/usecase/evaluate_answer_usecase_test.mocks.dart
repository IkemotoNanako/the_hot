// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_hackathon_2024/test/application/usecase/evaluate_answer_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:flutter_hackathon_2024/domain/answer.dart' as _i7;
import 'package:flutter_hackathon_2024/domain/hot_item.dart' as _i4;
import 'package:flutter_hackathon_2024/domain/question.dart' as _i5;
import 'package:flutter_hackathon_2024/infrastructure/repository/common_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:supabase_flutter/supabase_flutter.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSupabaseClient_0 extends _i1.SmartFake
    implements _i2.SupabaseClient {
  _FakeSupabaseClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CommonRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCommonRepository extends _i1.Mock implements _i3.CommonRepository {
  MockCommonRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SupabaseClient get supabase => (super.noSuchMethod(
        Invocation.getter(#supabase),
        returnValue: _FakeSupabaseClient_0(
          this,
          Invocation.getter(#supabase),
        ),
      ) as _i2.SupabaseClient);

  @override
  List<_i4.HotItem> get hotItemAll => (super.noSuchMethod(
        Invocation.getter(#hotItemAll),
        returnValue: <_i4.HotItem>[],
      ) as List<_i4.HotItem>);

  @override
  List<_i5.Question> get questionAll => (super.noSuchMethod(
        Invocation.getter(#questionAll),
        returnValue: <_i5.Question>[],
      ) as List<_i5.Question>);

  @override
  _i6.Future<void> fetchHotItemAll() => (super.noSuchMethod(
        Invocation.method(
          #fetchHotItemAll,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> fetchQuestionAll() => (super.noSuchMethod(
        Invocation.method(
          #fetchQuestionAll,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setAnswer(_i7.AnswerForms? answerForms) =>
      (super.noSuchMethod(
        Invocation.method(
          #setAnswer,
          [answerForms],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Stream<List<_i7.Answer>> fetchAnswerStream() => (super.noSuchMethod(
        Invocation.method(
          #fetchAnswerStream,
          [],
        ),
        returnValue: _i6.Stream<List<_i7.Answer>>.empty(),
      ) as _i6.Stream<List<_i7.Answer>>);
}