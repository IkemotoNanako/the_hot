import 'package:flutter_hackathon_2024/domain/hot_item.dart';
import 'package:flutter_hackathon_2024/domain/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_state.freezed.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    required List<Question> questionList,
    @Default(null) HotItem? hotItem,
  }) = _QuestionState;
}
