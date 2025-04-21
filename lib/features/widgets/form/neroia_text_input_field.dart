import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/theme/colors.dart';

class NeroiaTextInputField extends ConsumerWidget {
  final String? initialValue;
  final String? hint;
  final String? label;
  final String? helper;
  final bool obscureText;

  final IconData? prefixIcon;
  final IconData? suffixIcon;

  final void Function(String)? onChanged;

  const NeroiaTextInputField({
    super.key,
    this.initialValue,
    this.hint,
    this.label,
    this.helper,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconColor = ref.colors.text;

    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? HugeIcon(icon: prefixIcon!, color: iconColor) : null,
        suffixIcon: suffixIcon != null ? HugeIcon(icon: suffixIcon!, color: iconColor) : null,
        labelText: label,
        hintText: hint,
        helperText: helper,
        border: OutlineInputBorder(),
      ),
    );
  }
}
