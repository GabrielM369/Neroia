import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorPage extends ConsumerWidget {
  final String? error;
  final VoidCallback? onRetry;

  const ErrorPage({super.key, required this.error, this.onRetry});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(body: Center(child: Text(error ?? 'An error occurred'))),
      ),
    );
  }
}
