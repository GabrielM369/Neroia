import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlockingGestureDetector extends ConsumerStatefulWidget {
  final FutureOr<void> Function()? onTap;
  final void Function(Object e, StackTrace s)? onError;
  final Widget Function(ButtonState state) childBuilder;

  const BlockingGestureDetector({super.key, this.onTap, this.onError, required this.childBuilder});

  @override
  ConsumerState createState() => _BlockingGestureDetectorState();
}

class _BlockingGestureDetectorState extends ConsumerState<BlockingGestureDetector> {
  bool _isLoading = false;
  bool _isError = false;

  FutureOr<void> onTap() async {
    if (_isLoading) return;

    try {
      setState(() {
        _isLoading = true;
        _isError = false;
      });
      await widget.onTap?.call();
    } catch (e, s) {
      widget.onError?.call(e, s);
      if (mounted) setState(() => _isError = true);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  void didUpdateWidget(covariant BlockingGestureDetector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.onTap != widget.onTap) {
      setState(() {
        _isLoading = false;
        _isError = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.onTap == null,
      child: GestureDetector(
        onTap: onTap,
        child: widget.childBuilder(
          _isLoading
              ? ButtonState.loading
              : _isError
                  ? ButtonState.error
                  : ButtonState.idle,
        ),
      ),
    );
  }
}

enum ButtonState {
  loading,
  error,
  idle;

  bool get isLoading => this == ButtonState.loading;
  bool get isError => this == ButtonState.error;
  bool get isIdle => this == ButtonState.idle;
}
