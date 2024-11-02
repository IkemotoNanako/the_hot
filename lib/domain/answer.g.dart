// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num).toInt(),
      hotItem: HotItem.fromJson(json['hotItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotItem': instance.hotItem,
    };

_$AnswerFormsImpl _$$AnswerFormsImplFromJson(Map<String, dynamic> json) =>
    _$AnswerFormsImpl(
      hotItemId: (json['hotItemId'] as num).toInt(),
    );

Map<String, dynamic> _$$AnswerFormsImplToJson(_$AnswerFormsImpl instance) =>
    <String, dynamic>{
      'hotItemId': instance.hotItemId,
    };
