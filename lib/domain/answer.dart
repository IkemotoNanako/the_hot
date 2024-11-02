import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required int id,
    required HotItem hotItem,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
