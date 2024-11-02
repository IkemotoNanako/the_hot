import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_completed') required bool isCompleted,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

/// id,CreatedAt,UpdatedAtは初回作成時に自動で設定されるためCreate時はTodoFormsを使う
@freezed
class TodoForms with _$TodoForms {
  const factory TodoForms({
    required String title,
    required String description,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
  }) = _TodoForms;

  factory TodoForms.fromJson(Map<String, dynamic> json) =>
      _$TodoFormsFromJson(json);
}
