import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class CustomCircleButton extends StatelessWidget {
  final String label;
  final ButtonColorType colorType;
  final VoidCallback onPressed;

  const CustomCircleButton({
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

    return InkWell(
      splashColor: CustomColorTheme.white,
      onTap: onPressed,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: buttonColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: CustomColorTheme.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: customTextTheme.headlineLarge?.copyWith(
              color: CustomColorTheme.white,
            ),
          ),
        ),
      ),
    );

    // return ElevatedButton(
    //   onPressed: onPressed,
    //   style: ElevatedButton.styleFrom(
    //     elevation: 10,
    //     backgroundColor: buttonColor,
    //     overlayColor: CustomColorTheme.white,
    //     padding: const EdgeInsets.symmetric(
    //       vertical: 16,
    //       horizontal: 46,
    //     ),
    //   ),
    //   child: Text(
    //     label,
    //     style: customTextTheme.headlineLarge?.copyWith(
    //       color: CustomColorTheme.white,
    //     ),
    //   ),
    // );
  }
}
