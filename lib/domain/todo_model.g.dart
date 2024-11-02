// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      userId: json['user_id'] as String,
      isCompleted: json['is_completed'] as bool,
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'user_id': instance.userId,
      'is_completed': instance.isCompleted,
    };

_$TodoFormsImpl _$$TodoFormsImplFromJson(Map<String, dynamic> json) =>
    _$TodoFormsImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      userId: json['user_id'] as String,
      isCompleted: json['is_completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoFormsImplToJson(_$TodoFormsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'user_id': instance.userId,
      'is_completed': instance.isCompleted,
    };
