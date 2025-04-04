import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:neroia_app/features/widgets/blocking_gesture_detector.dart';

class NeroiaButton extends ConsumerWidget {
  final String? text;
  final Widget? leading;
  final Widget? trailing;
  final Widget? icon;
  final bool isPrimary;
  final bool expandWidth;
  final FutureOr<void> Function()? onTap;
  final void Function(Object e, StackTrace s)? onError;
  final MainAxisAlignment alignment;

  const NeroiaButton.primary({
    super.key,
    this.text,
    required this.onTap,
    this.onError,
    this.leading,
    this.trailing,
    this.expandWidth = false,
    this.alignment = MainAxisAlignment.center,
    this.icon = null,
  }) : isPrimary = true;

  const NeroiaButton.secondary({
    super.key,
    this.text,
    required this.onTap,
    this.onError,
    this.leading,
    this.trailing,
    this.expandWidth = false,
    this.alignment = MainAxisAlignment.center,
    this.icon = null,
  }) : isPrimary = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isValid = onTap != null;
    final isIconOnly = icon != null;

    final textColor = isPrimary ? ref.colors.background : ref.colors.primary;
    return BlockingGestureDetector(
      onTap: onTap,
      onError: onError,
      childBuilder:
          (buttonState) => Opacity(
            opacity: isValid ? 1.0 : 0.5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient:
                    isPrimary
                        ? LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [ref.colors.primary, ref.colors.secondary],
                        )
                        : null,
                border: isPrimary ? null : Border(),
              ),
              width: expandWidth ? double.infinity : null,
              child: Row(
                spacing: 8.0,
                mainAxisAlignment: alignment,
                mainAxisSize: expandWidth ? MainAxisSize.max : MainAxisSize.min,
                children:
                    buttonState.isLoading
                        ? [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: isPrimary ? ref.colors.primary : ref.colors.background,
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                isPrimary ? ref.colors.background : ref.colors.primary,
                              ),
                            ),
                          ),
                        ]
                        : isIconOnly
                        ? [IconTheme(data: IconThemeData(color: textColor, size: 24.0), child: icon!)]
                        : [
                          if (leading != null) leading!,
                          Flexible(
                            child: Text(
                              text!,
                              style: ref.textStyle.buttonText.copyWith(color: textColor, fontSize: 16.0),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (trailing != null) trailing!,
                        ],
              ),
            ),
          ),
    );
  }
}
