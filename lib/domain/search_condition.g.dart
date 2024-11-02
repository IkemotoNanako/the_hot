// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchConditionImpl _$$SearchConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchConditionImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$SearchConditionImplToJson(
        _$SearchConditionImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
