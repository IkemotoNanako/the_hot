// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionState {
  List<Question> get questionList => throw _privateConstructorUsedError;
  HotItem? get hotItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call({List<Question> questionList, HotItem? hotItem});

  $HotItemCopyWith<$Res>? get hotItem;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? hotItem = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      hotItem: freezed == hotItem
          ? _value.hotItem
          : hotItem // ignore: cast_nullable_to_non_nullable
              as HotItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotItemCopyWith<$Res>? get hotItem {
    if (_value.hotItem == null) {
      return null;
    }

    return $HotItemCopyWith<$Res>(_value.hotItem!, (value) {
      return _then(_value.copyWith(hotItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionStateImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$QuestionStateImplCopyWith(
          _$QuestionStateImpl value, $Res Function(_$QuestionStateImpl) then) =
      __$$QuestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Question> questionList, HotItem? hotItem});

  @override
  $HotItemCopyWith<$Res>? get hotItem;
}

/// @nodoc
class __$$QuestionStateImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionStateImpl>
    implements _$$QuestionStateImplCopyWith<$Res> {
  __$$QuestionStateImplCopyWithImpl(
      _$QuestionStateImpl _value, $Res Function(_$QuestionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionList = null,
    Object? hotItem = freezed,
  }) {
    return _then(_$QuestionStateImpl(
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      hotItem: freezed == hotItem
          ? _value.hotItem
          : hotItem // ignore: cast_nullable_to_non_nullable
              as HotItem?,
    ));
  }
}

/// @nodoc

class _$QuestionStateImpl implements _QuestionState {
  const _$QuestionStateImpl(
      {required final List<Question> questionList, this.hotItem = null})
      : _questionList = questionList;

  final List<Question> _questionList;
  @override
  List<Question> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  @JsonKey()
  final HotItem? hotItem;

  @override
  String toString() {
    return 'QuestionState(questionList: $questionList, hotItem: $hotItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            (identical(other.hotItem, hotItem) || other.hotItem == hotItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionList), hotItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState(
      {required final List<Question> questionList,
      final HotItem? hotItem}) = _$QuestionStateImpl;

  @override
  List<Question> get questionList;
  @override
  HotItem? get hotItem;
  @override
  @JsonKey(ignore: true)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
