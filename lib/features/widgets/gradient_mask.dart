import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';

class GradientMask extends ConsumerWidget {
  final Widget child;

  const GradientMask({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShaderMask(
      shaderCallback:
          (bounds) => LinearGradient(
            colors: [ref.colors.primary, ref.colors.secondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
      child: child,
    );
  }
}
