import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String label;
  final ButtonColorType colorType;
  final VoidCallback onPressed;

  const CustomFilledButton({
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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        overlayColor: CustomColorTheme.white,
      ),
      child: Text(
        label,
        style: customTextTheme.labelMedium?.copyWith(
          color: CustomColorTheme.white,
        ),
      ),
    );
  }
}
