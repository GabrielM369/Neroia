import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';

class NeroiaBackgroundGradient extends ConsumerWidget {
  final Widget child;
  const NeroiaBackgroundGradient({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Positioned.fill(child: Container(color: ref.colors.background)),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: GradientContainer(begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: GradientContainer(begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child,
      ],
    );
  }
}

class GradientContainer extends ConsumerWidget {
  final Alignment begin;
  final Alignment end;

  const GradientContainer({super.key, required this.begin, required this.end});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: begin,
          end: end,
          colors: [ref.colors.background.withValues(alpha: 0.3), ref.colors.background.withValues(alpha: 0.0)],
          stops: [0.0, 1.0],
        ).createShader(rect);
      },
      blendMode: BlendMode.dstIn,
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [ref.colors.primary, ref.colors.secondary],
          ),
        ),
      ),
    );
  }
}
