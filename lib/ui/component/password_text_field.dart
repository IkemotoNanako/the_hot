import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordTextField extends HookWidget {
  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
  });

  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    final passwordController = useTextEditingController();
    return TextField(
      controller: passwordController,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: isVisible.value
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () {
            isVisible.value = !isVisible.value;
          },
        ),
      ),
      onChanged: onChanged,
      obscureText: !isVisible.value,
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
