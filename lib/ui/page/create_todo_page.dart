import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_filled_button.dart';
import 'package:flutter_hackathon_2024/ui/controller/create_todo_controller.dart';
import 'package:flutter_hackathon_2024/ui/controller/sample_controller.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateTodoPage extends ConsumerWidget {
  const CreateTodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(createTodoControllerProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Todo Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Title',
                ),
                onChanged: (value) => ref
                    .read(createTodoControllerProvider.notifier)
                    .updateTitle(value),
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(8),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
                ),
                onChanged: (value) => ref
                    .read(createTodoControllerProvider.notifier)
                    .updateDescription(value),
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(48),
              CustomFilledButton(
                  label: '登録する',
                  colorType: ButtonColorType.primary,
                  onPressed: () async {
                    await ref
                        .read(createTodoControllerProvider.notifier)
                        .createTodo();
                    ref.invalidate(sampleControllerProvider);
                    if (context.mounted) {
                      context.pop();
                    }
                  }),
            ],
          ),
        ));
  }
}
