import 'package:flutter_hackathon_2024/domain/search_condition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_item.freezed.dart';
part 'hot_item.g.dart';

@freezed
class HotItem with _$HotItem {
  const factory HotItem({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'search_condition') required SearchCondition searchCondition,
  }) = _HotItem;

  factory HotItem.fromJson(Map<String, dynamic> json) =>
      _$HotItemFromJson(json);
}
