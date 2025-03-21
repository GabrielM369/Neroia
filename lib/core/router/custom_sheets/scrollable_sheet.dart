import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CustomScrollableSheet extends ConsumerWidget {
  final Widget content;
  final SheetAnchor? minPosition;
  final SheetAnchor? maxPosition;
  final SheetAnchor? initialPosition;
  const CustomScrollableSheet({
    super.key,
    required this.content,
    this.minPosition,
    this.maxPosition,
    this.initialPosition,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      bottom: false,
      child: SheetKeyboardDismissible(
        dismissBehavior: const SheetKeyboardDismissBehavior.onDragDown(isContentScrollAware: true),
        child: ScrollableSheet(
          minPosition: minPosition ?? const SheetAnchor.proportional(1),
          maxPosition: maxPosition ?? const SheetAnchor.proportional(1),
          initialPosition: initialPosition ?? const SheetAnchor.proportional(1),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                color: ref.colors.background,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                clipBehavior: Clip.antiAlias,
                elevation: 8,
                child: content,
              ),
              // used to avoid content being cut off at the bottom on over-drag
              Positioned(bottom: -150, left: 0, right: 0, child: Container(height: 150, color: ref.colors.background)),
            ],
          ),
        ),
      ),
    );
  }
}
