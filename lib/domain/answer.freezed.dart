// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int get id => throw _privateConstructorUsedError;
  HotItem get hotItem => throw _privateConstructorUsedError;

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call({int id, HotItem hotItem});

  $HotItemCopyWith<$Res> get hotItem;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotItem = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotItem: null == hotItem
          ? _value.hotItem
          : hotItem // ignore: cast_nullable_to_non_nullable
              as HotItem,
    ) as $Val);
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotItemCopyWith<$Res> get hotItem {
    return $HotItemCopyWith<$Res>(_value.hotItem, (value) {
      return _then(_value.copyWith(hotItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, HotItem hotItem});

  @override
  $HotItemCopyWith<$Res> get hotItem;
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotItem = null,
  }) {
    return _then(_$AnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotItem: null == hotItem
          ? _value.hotItem
          : hotItem // ignore: cast_nullable_to_non_nullable
              as HotItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl implements _Answer {
  const _$AnswerImpl({required this.id, required this.hotItem});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  final int id;
  @override
  final HotItem hotItem;

  @override
  String toString() {
    return 'Answer(id: $id, hotItem: $hotItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotItem, hotItem) || other.hotItem == hotItem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hotItem);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required final int id, required final HotItem hotItem}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  int get id;
  @override
  HotItem get hotItem;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerForms _$AnswerFormsFromJson(Map<String, dynamic> json) {
  return _AnswerForms.fromJson(json);
}

/// @nodoc
mixin _$AnswerForms {
  int get hotItemId => throw _privateConstructorUsedError;

  /// Serializes this AnswerForms to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerForms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerFormsCopyWith<AnswerForms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormsCopyWith<$Res> {
  factory $AnswerFormsCopyWith(
          AnswerForms value, $Res Function(AnswerForms) then) =
      _$AnswerFormsCopyWithImpl<$Res, AnswerForms>;
  @useResult
  $Res call({int hotItemId});
}

/// @nodoc
class _$AnswerFormsCopyWithImpl<$Res, $Val extends AnswerForms>
    implements $AnswerFormsCopyWith<$Res> {
  _$AnswerFormsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerForms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotItemId = null,
  }) {
    return _then(_value.copyWith(
      hotItemId: null == hotItemId
          ? _value.hotItemId
          : hotItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerFormsImplCopyWith<$Res>
    implements $AnswerFormsCopyWith<$Res> {
  factory _$$AnswerFormsImplCopyWith(
          _$AnswerFormsImpl value, $Res Function(_$AnswerFormsImpl) then) =
      __$$AnswerFormsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hotItemId});
}

/// @nodoc
class __$$AnswerFormsImplCopyWithImpl<$Res>
    extends _$AnswerFormsCopyWithImpl<$Res, _$AnswerFormsImpl>
    implements _$$AnswerFormsImplCopyWith<$Res> {
  __$$AnswerFormsImplCopyWithImpl(
      _$AnswerFormsImpl _value, $Res Function(_$AnswerFormsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerForms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotItemId = null,
  }) {
    return _then(_$AnswerFormsImpl(
      hotItemId: null == hotItemId
          ? _value.hotItemId
          : hotItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerFormsImpl implements _AnswerForms {
  const _$AnswerFormsImpl({required this.hotItemId});

  factory _$AnswerFormsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerFormsImplFromJson(json);

  @override
  final int hotItemId;

  @override
  String toString() {
    return 'AnswerForms(hotItemId: $hotItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerFormsImpl &&
            (identical(other.hotItemId, hotItemId) ||
                other.hotItemId == hotItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hotItemId);

  /// Create a copy of AnswerForms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerFormsImplCopyWith<_$AnswerFormsImpl> get copyWith =>
      __$$AnswerFormsImplCopyWithImpl<_$AnswerFormsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerFormsImplToJson(
      this,
    );
  }
}

abstract class _AnswerForms implements AnswerForms {
  const factory _AnswerForms({required final int hotItemId}) =
      _$AnswerFormsImpl;

  factory _AnswerForms.fromJson(Map<String, dynamic> json) =
      _$AnswerFormsImpl.fromJson;

  @override
  int get hotItemId;

  /// Create a copy of AnswerForms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerFormsImplCopyWith<_$AnswerFormsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
