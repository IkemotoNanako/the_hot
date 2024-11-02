import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:flutter_hackathon_2024/util/constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SampleRepository {
  SampleRepository();
  final supabase = Supabase.instance.client;

  Future<void> createSample(TodoForms todoForms) async {
    try {
      await supabase.from(tableNameTodo).insert(todoForms.toJson());
    } catch (e) {
      // todo:エラーハンドリング
      rethrow;
    }
  }

  Future<List<Todo>> readTodo() async {
    final response = await supabase.from(tableNameTodo).select();
    return response.map((json) {
      return Todo.fromJson(json);
    }).toList();
  }

  Future<void> deleteTodo(Todo todo) async {
    await supabase.from(tableNameTodo).delete().match({'id': todo.id});
  }
}
