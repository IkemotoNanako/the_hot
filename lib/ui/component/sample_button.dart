import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class SampleButton extends StatelessWidget {
  const SampleButton({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: customTextTheme.labelLarge,
      ),
    );
  }
}
