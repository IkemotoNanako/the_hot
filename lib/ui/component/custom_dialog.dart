import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_filled_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_outlined_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_text_button.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_color_theme.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';

class CustomDialog {
  final BuildContext context;
  final String title;
  final String message;
  final DialogType type;
  final VoidCallback? onRetry;

  const CustomDialog({
    Key? key,
    required this.context,
    required this.title,
    required this.message,
    required this.type,
    this.onRetry,
  });

  // ダイアログ表示のための静的メソッド
  static void showCustomDialog({
    required context,
    required type,
    required title,
    required message,
    onRetry,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        switch (type) {
          case DialogType.textOnly:
            return _TextOnlyDialog(title: title, message: message);
          case DialogType.okButton:
            return _OkButtonDialog(title: title, message: message);
          case DialogType.retryAndClose:
            return _RetryAndCloseDialog(
                title: title, message: message, onRetry: onRetry);
          default:
            return _TextOnlyDialog(title: title, message: message);
        }
      },
    );
  }
}

// 文字だけのダイアログ
class _TextOnlyDialog extends StatelessWidget {
  const _TextOnlyDialog({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CustomColorTheme.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  title,
                  style: customTextTheme.headlineMedium
                      ?.copyWith(color: CustomColorTheme.black),
                ),
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: customTextTheme.bodyMedium
                    ?.copyWith(color: CustomColorTheme.black),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// OKボタン付きダイアログ
class _OkButtonDialog extends StatelessWidget {
  const _OkButtonDialog({required this.title, required this.message});

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CustomColorTheme.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  title,
                  style: customTextTheme.headlineMedium
                      ?.copyWith(color: CustomColorTheme.black),
                ),
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: customTextTheme.bodyMedium
                    ?.copyWith(color: CustomColorTheme.black),
              ),
              const SizedBox(height: 24),
              CustomFilledButton(
                label: 'OK',
                colorType: ButtonColorType.primary,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// リトライと閉じるボタン付きダイアログ
class _RetryAndCloseDialog extends StatelessWidget {
  const _RetryAndCloseDialog({
    required this.title,
    required this.message,
    this.onRetry,
  });

  final String title;
  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: CustomColorTheme.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  title,
                  style: customTextTheme.headlineMedium
                      ?.copyWith(color: CustomColorTheme.black),
                ),
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: customTextTheme.bodyMedium
                    ?.copyWith(color: CustomColorTheme.black),
              ),
              const SizedBox(height: 24),
              CustomOutlinedButton(
                label: 'リトライ',
                colorType: ButtonColorType.primary,
                onPressed: () {
                  onRetry?.call();
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 8),
              CustomTextButton(
                label: '閉じる',
                colorType: ButtonColorType.primary,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// ダイアログの種類を表す列挙型
enum DialogType {
  textOnly,
  okButton,
  retryAndClose,
}
