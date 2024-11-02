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
