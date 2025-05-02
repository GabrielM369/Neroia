import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'neroia_background_gradient.dart';

class NeroiaScaffold extends ConsumerWidget {
  final Widget body;

  const NeroiaScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeroiaBackgroundGradient(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0), child: body),
        ),
      ),
    );
  }
}
