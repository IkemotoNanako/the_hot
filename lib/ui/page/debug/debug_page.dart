import 'package:flutter/material.dart';
import 'package:flutter_hackathon_2024/domain/enum/button_color_type.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_dialog.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_filled_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_outlined_button.dart';
import 'package:flutter_hackathon_2024/ui/component/custom_text_button.dart';
import 'package:flutter_hackathon_2024/ui/style/custom_text_theme.dart';
import 'package:go_router/go_router.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Debug Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            _DebugPageTile(
                title: 'Text Style',
                onPressed: () {
                  context.go('/debug/text_style');
                }),
            CustomFilledButton(
              label: '塗りつぶしボタン',
              colorType: ButtonColorType.primary,
              onPressed: () {},
            ),
            CustomFilledButton(
              label: '塗りつぶしボタン',
              colorType: ButtonColorType.accent,
              onPressed: () {},
            ),
            CustomOutlinedButton(
              label: '枠線ボタン',
              colorType: ButtonColorType.primary,
              onPressed: () {},
            ),
            CustomOutlinedButton(
              label: '枠線ボタン',
              colorType: ButtonColorType.accent,
              onPressed: () {},
            ),
            CustomTextButton(
              label: 'テキストボタン',
              colorType: ButtonColorType.primary,
              onPressed: () {},
            ),
            CustomTextButton(
              label: 'テキストボタン',
              colorType: ButtonColorType.accent,
              onPressed: () {},
            ),
            _DebugPageTile(
              title: 'アラートダイアログ',
              onPressed: () => CustomDialog.showCustomDialog(
                  context: context,
                  title: 'アラートダイアログタイトル',
                  message: 'メッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージ',
                  type: DialogType.textOnly),
            ),
            _DebugPageTile(
              title: 'OKアラートダイアログ',
              onPressed: () => CustomDialog.showCustomDialog(
                  context: context,
                  title: 'OKアラートダイアロググタイトル',
                  message: 'メッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージ',
                  type: DialogType.okButton),
            ),
            _DebugPageTile(
              title: 'リトライ＆閉じるアラートダイアログ',
              onPressed: () => CustomDialog.showCustomDialog(
                context: context,
                title: 'リトライ＆閉じるアラートダイアロググタイトル',
                message: 'メッセージメッセージメッセージメッセージメッセージメッセージメッセージメッセージ',
                type: DialogType.retryAndClose,
              ),
            ),
          ]),
        ));
  }
}

class _DebugPageTile extends StatelessWidget {
  const _DebugPageTile({required this.title, this.onPressed});

  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: customTextTheme.bodyMedium),
        ),
      ),
    );
  }
}
