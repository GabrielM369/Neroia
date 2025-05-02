import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:neroia_app/core/theme/colors.dart';

class LoadingIndicator extends ConsumerWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
      child: Row(
        children: [
          SpinKitThreeBounce(
            color: ref.colors.primary,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}
