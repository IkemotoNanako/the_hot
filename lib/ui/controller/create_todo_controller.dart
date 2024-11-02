import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:flutter_hackathon_2024/ui/state/create_todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'create_todo_controller.g.dart';

@riverpod
class CreateTodoController extends _$CreateTodoController {
  @override
  CreateTodoState build() {
    final userId = Supabase.instance.client.auth.currentUser!.id;
    return CreateTodoState(
      forms: TodoForms(
        title: '',
        description: '',
        userId: userId,
      ),
      isLoading: false,
    );
  }

  void updateTitle(String title) {
    state = state.copyWith(forms: state.forms.copyWith(title: title));
  }

  void updateDescription(String description) {
    state =
        state.copyWith(forms: state.forms.copyWith(description: description));
  }

  Future<void> createTodo() async {
    state = state.copyWith(isLoading: true);
    await ref.read(sampleUsecaseProvider).createSample(state.forms);
    state = state.copyWith(isLoading: false);
  }
}
