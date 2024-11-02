// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotItem _$HotItemFromJson(Map<String, dynamic> json) {
  return _HotItem.fromJson(json);
}

/// @nodoc
mixin _$HotItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'search_condition')
  SearchCondition get searchCondition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotItemCopyWith<HotItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotItemCopyWith<$Res> {
  factory $HotItemCopyWith(HotItem value, $Res Function(HotItem) then) =
      _$HotItemCopyWithImpl<$Res, HotItem>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'search_condition') SearchCondition searchCondition});

  $SearchConditionCopyWith<$Res> get searchCondition;
}

/// @nodoc
class _$HotItemCopyWithImpl<$Res, $Val extends HotItem>
    implements $HotItemCopyWith<$Res> {
  _$HotItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? searchCondition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      searchCondition: null == searchCondition
          ? _value.searchCondition
          : searchCondition // ignore: cast_nullable_to_non_nullable
              as SearchCondition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchConditionCopyWith<$Res> get searchCondition {
    return $SearchConditionCopyWith<$Res>(_value.searchCondition, (value) {
      return _then(_value.copyWith(searchCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotItemImplCopyWith<$Res> implements $HotItemCopyWith<$Res> {
  factory _$$HotItemImplCopyWith(
          _$HotItemImpl value, $Res Function(_$HotItemImpl) then) =
      __$$HotItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'search_condition') SearchCondition searchCondition});

  @override
  $SearchConditionCopyWith<$Res> get searchCondition;
}

/// @nodoc
class __$$HotItemImplCopyWithImpl<$Res>
    extends _$HotItemCopyWithImpl<$Res, _$HotItemImpl>
    implements _$$HotItemImplCopyWith<$Res> {
  __$$HotItemImplCopyWithImpl(
      _$HotItemImpl _value, $Res Function(_$HotItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? searchCondition = null,
  }) {
    return _then(_$HotItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      searchCondition: null == searchCondition
          ? _value.searchCondition
          : searchCondition // ignore: cast_nullable_to_non_nullable
              as SearchCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotItemImpl implements _HotItem {
  const _$HotItemImpl(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'search_condition') required this.searchCondition});

  factory _$HotItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'search_condition')
  final SearchCondition searchCondition;

  @override
  String toString() {
    return 'HotItem(id: $id, title: $title, description: $description, imageUrl: $imageUrl, searchCondition: $searchCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.searchCondition, searchCondition) ||
                other.searchCondition == searchCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, imageUrl, searchCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotItemImplCopyWith<_$HotItemImpl> get copyWith =>
      __$$HotItemImplCopyWithImpl<_$HotItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotItemImplToJson(
      this,
    );
  }
}

abstract class _HotItem implements HotItem {
  const factory _HotItem(
      {required final int id,
      required final String title,
      required final String description,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'search_condition')
      required final SearchCondition searchCondition}) = _$HotItemImpl;

  factory _HotItem.fromJson(Map<String, dynamic> json) = _$HotItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'search_condition')
  SearchCondition get searchCondition;
  @override
  @JsonKey(ignore: true)
  _$$HotItemImplCopyWith<_$HotItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
