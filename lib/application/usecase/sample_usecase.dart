import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:flutter_hackathon_2024/infrastructure/repository/sample_repository.dart';

class SampleUsecase {
  final SampleRepository _repository;

  SampleUsecase(this._repository);

  Future<void> createSample(TodoForms todoForms) async {
    await _repository.createSample(todoForms);
  }

  Future<List<Todo>> readTodo() async {
    return await _repository.readTodo();
  }

  Future<void> deleteTodo(Todo todo) async {
    await _repository.deleteTodo(todo);
  }
}
