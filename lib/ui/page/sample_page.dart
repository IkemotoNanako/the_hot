import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/application/provider/usecase_providers.dart';
import 'package:flutter_hackathon_2024/domain/todo_model.dart';
import 'package:flutter_hackathon_2024/ui/controller/sample_controller.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sampleControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Page'),
        actions: [
          TextButton(
            child: const Text('デバッグ'),
            onPressed: () => context.go(
              const DebugPageRoute().location,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async =>
                await ref.read(signOutUsecaseProvider).invoke(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go(
          const CreateTodoRoute().location,
        ),
        child: const Icon(Icons.add),
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (state) {
          if (state.sampleList.isEmpty) {
            return const Center(child: Text('Todoがまだありません。Todoを作成しましょう!'));
          }
          return Center(
              child: ListView(
            children: state.sampleList.map((todo) => _ListTile(todo)).toList(),
          ));
        },
        error: (error, _) => Center(child: Text(error.toString())),
      ),
    );
  }
}

class _ListTile extends ConsumerWidget {
  const _ListTile(this.todo);

  final Todo todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: Key(todo.hashCode.toString()),
      onDismissed: (direction) {
        ref.read(sampleControllerProvider.notifier).deleteTodo(todo);
      },
      background: Container(color: Theme.of(context).colorScheme.error),
      child: ListTile(
        title: Text(todo.title),
      ),
    );
  }
}
