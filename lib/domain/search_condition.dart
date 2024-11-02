import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_condition.freezed.dart';
part 'search_condition.g.dart';

@freezed
class SearchCondition with _$SearchCondition {
  const factory SearchCondition({
    required double latitude,
    required double longitude,
  }) = _SearchCondition;

  factory SearchCondition.fromJson(Map<String, dynamic> json) =>
      _$SearchConditionFromJson(json);
}
