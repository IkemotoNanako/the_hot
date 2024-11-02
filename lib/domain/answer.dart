import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';

part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required HotItem hotItem,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

// insert時はhotItemIdだけあればいいので、AnswerFormsを使う
@freezed
class AnswerForms with _$AnswerForms {
  const factory AnswerForms({
    @JsonKey(name: 'hot_item_id') required int hotItemId,
  }) = _AnswerForms;

  factory AnswerForms.fromJson(Map<String, dynamic> json) =>
      _$AnswerFormsFromJson(json);
}
