import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final ButtonColorType colorType;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.colorType,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final buttonColor = switch (colorType) {
      ButtonColorType.primary => CustomColorTheme.primary,
      ButtonColorType.accent => CustomColorTheme.accent,
    };
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        overlayColor: buttonColor,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 46,
        ),
      ),
      child: Text(
        label,
        style: customTextTheme.headlineLarge?.copyWith(
          color: buttonColor,
        ),
      ),
    );
  }
}