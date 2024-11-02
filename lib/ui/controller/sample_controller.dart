import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:flutter_hackathon_2024/ui/state/sample_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_controller.g.dart';

@riverpod
class SampleController extends _$SampleController {
  @override
  FutureOr<SampleState> build() async {
    final todoList = await _fetch();
    return SampleState(sampleList: todoList);
  }

  Future<List<Todo>> _fetch() async {
    return await ref.read(sampleUsecaseProvider).readTodo();
  }

  Future<void> deleteTodo(Todo todo) async {
    await ref.read(sampleUsecaseProvider).deleteTodo(todo);
  }
}
