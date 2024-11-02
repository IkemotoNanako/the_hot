// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTodoState {
  TodoForms get forms => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTodoStateCopyWith<CreateTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoStateCopyWith<$Res> {
  factory $CreateTodoStateCopyWith(
          CreateTodoState value, $Res Function(CreateTodoState) then) =
      _$CreateTodoStateCopyWithImpl<$Res, CreateTodoState>;
  @useResult
  $Res call({TodoForms forms, bool isLoading});

  $TodoFormsCopyWith<$Res> get forms;
}

/// @nodoc
class _$CreateTodoStateCopyWithImpl<$Res, $Val extends CreateTodoState>
    implements $CreateTodoStateCopyWith<$Res> {
  _$CreateTodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forms = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as TodoForms,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoFormsCopyWith<$Res> get forms {
    return $TodoFormsCopyWith<$Res>(_value.forms, (value) {
      return _then(_value.copyWith(forms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTodoStateImplCopyWith<$Res>
    implements $CreateTodoStateCopyWith<$Res> {
  factory _$$CreateTodoStateImplCopyWith(_$CreateTodoStateImpl value,
          $Res Function(_$CreateTodoStateImpl) then) =
      __$$CreateTodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TodoForms forms, bool isLoading});

  @override
  $TodoFormsCopyWith<$Res> get forms;
}

/// @nodoc
class __$$CreateTodoStateImplCopyWithImpl<$Res>
    extends _$CreateTodoStateCopyWithImpl<$Res, _$CreateTodoStateImpl>
    implements _$$CreateTodoStateImplCopyWith<$Res> {
  __$$CreateTodoStateImplCopyWithImpl(
      _$CreateTodoStateImpl _value, $Res Function(_$CreateTodoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forms = null,
    Object? isLoading = null,
  }) {
    return _then(_$CreateTodoStateImpl(
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as TodoForms,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateTodoStateImpl implements _CreateTodoState {
  const _$CreateTodoStateImpl({required this.forms, required this.isLoading});

  @override
  final TodoForms forms;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CreateTodoState(forms: $forms, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoStateImpl &&
            (identical(other.forms, forms) || other.forms == forms) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forms, isLoading);

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoStateImplCopyWith<_$CreateTodoStateImpl> get copyWith =>
      __$$CreateTodoStateImplCopyWithImpl<_$CreateTodoStateImpl>(
          this, _$identity);
}

abstract class _CreateTodoState implements CreateTodoState {
  const factory _CreateTodoState(
      {required final TodoForms forms,
      required final bool isLoading}) = _$CreateTodoStateImpl;

  @override
  TodoForms get forms;
  @override
  bool get isLoading;

  /// Create a copy of CreateTodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTodoStateImplCopyWith<_$CreateTodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
