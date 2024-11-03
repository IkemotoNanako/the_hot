import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String label;
  final ButtonColorType colorType;
  final VoidCallback onPressed;

  const CustomOutlinedButton({
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
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        overlayColor: buttonColor,
        side: BorderSide(color: buttonColor),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 46,
        ),
      ),
      child: Text(
        label,
        style: customTextTheme.headlineMedium?.copyWith(
          color: buttonColor,
        ),
      ),
    );
  }
}
