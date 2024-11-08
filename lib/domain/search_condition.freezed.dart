// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchCondition _$SearchConditionFromJson(Map<String, dynamic> json) {
  return _SearchCondition.fromJson(json);
}

/// @nodoc
mixin _$SearchCondition {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchConditionCopyWith<SearchCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchConditionCopyWith<$Res> {
  factory $SearchConditionCopyWith(
          SearchCondition value, $Res Function(SearchCondition) then) =
      _$SearchConditionCopyWithImpl<$Res, SearchCondition>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$SearchConditionCopyWithImpl<$Res, $Val extends SearchCondition>
    implements $SearchConditionCopyWith<$Res> {
  _$SearchConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchConditionImplCopyWith<$Res>
    implements $SearchConditionCopyWith<$Res> {
  factory _$$SearchConditionImplCopyWith(_$SearchConditionImpl value,
          $Res Function(_$SearchConditionImpl) then) =
      __$$SearchConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$SearchConditionImplCopyWithImpl<$Res>
    extends _$SearchConditionCopyWithImpl<$Res, _$SearchConditionImpl>
    implements _$$SearchConditionImplCopyWith<$Res> {
  __$$SearchConditionImplCopyWithImpl(
      _$SearchConditionImpl _value, $Res Function(_$SearchConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$SearchConditionImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchConditionImpl implements _SearchCondition {
  const _$SearchConditionImpl(
      {required this.latitude, required this.longitude});

  factory _$SearchConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchConditionImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'SearchCondition(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchConditionImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchConditionImplCopyWith<_$SearchConditionImpl> get copyWith =>
      __$$SearchConditionImplCopyWithImpl<_$SearchConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchConditionImplToJson(
      this,
    );
  }
}

abstract class _SearchCondition implements SearchCondition {
  const factory _SearchCondition(
      {required final double latitude,
      required final double longitude}) = _$SearchConditionImpl;

  factory _SearchCondition.fromJson(Map<String, dynamic> json) =
      _$SearchConditionImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$SearchConditionImplCopyWith<_$SearchConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
