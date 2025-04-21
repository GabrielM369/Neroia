import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:neroia_app/core/router/neroia_routes.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/features/widgets/blocking_gesture_detector.dart';

class ProfilePictureButton extends ConsumerWidget {
  final double iconSize;
  final double padding;

  const ProfilePictureButton({super.key, this.iconSize = 30, this.padding = 8});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlockingGestureDetector(
      onTap: () => ProfileRoute().push(context),
      childBuilder:
          (_) => Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(shape: BoxShape.circle, color: ref.colors.primary),
            child: HugeIcon(icon: HugeIcons.strokeRoundedUserAccount, size: iconSize, color: ref.colors.text),
          ),
    );
  }
}
