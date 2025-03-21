import 'package:flutter/material.dart';
import 'package:neroia_app/core/router/custom_sheets/scrollable_sheet.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

abstract class CustomSheets {
  static Widget scrollable({
    required Widget child,
    SheetAnchor? minPosition,
    SheetAnchor? maxPosition,
    SheetAnchor? initialPosition,
  }) => CustomScrollableSheet(
    content: child,
    minPosition: minPosition,
    maxPosition: maxPosition,
    initialPosition: initialPosition,
  );
}
