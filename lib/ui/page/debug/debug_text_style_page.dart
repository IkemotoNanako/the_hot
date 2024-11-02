import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';
import 'package:gap/gap.dart';

class DebugTextStylePage extends StatelessWidget {
  const DebugTextStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Text Style Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Text("Headline", style: customTextTheme.headlineLarge),
              const Gap(8),
              Text("headlineLarge", style: customTextTheme.headlineLarge),
              Text("headlineMedium", style: customTextTheme.headlineMedium),
              Text("headlineSmall", style: customTextTheme.headlineSmall),
              const Divider(),
              Text("Body", style: customTextTheme.headlineLarge),
              const Gap(8),
              Text("bodyLarge", style: customTextTheme.bodyLarge),
              Text("bodyMedium", style: customTextTheme.bodyMedium),
              Text("bodySmall", style: customTextTheme.bodySmall),
              const Divider(),
              Text("Label", style: customTextTheme.headlineLarge),
              const Gap(8),
              Text("labelLarge", style: customTextTheme.labelLarge),
              Text("labelMedium", style: customTextTheme.labelMedium),
              Text("labelSmall", style: customTextTheme.labelSmall),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
