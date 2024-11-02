// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotItemImpl _$$HotItemImplFromJson(Map<String, dynamic> json) =>
    _$HotItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      searchCondition: SearchCondition.fromJson(
          json['search_condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotItemImplToJson(_$HotItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'search_condition': instance.searchCondition,
    };
