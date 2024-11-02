import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_todo_state.freezed.dart';

@freezed
class CreateTodoState with _$CreateTodoState {
  const factory CreateTodoState({
    required TodoForms forms,
    required bool isLoading,
  }) = _CreateTodoState;
}
