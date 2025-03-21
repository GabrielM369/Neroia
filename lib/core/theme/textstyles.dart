import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'textstyles.freezed.dart';
part 'textstyles.g.dart';

@riverpod
class TextStylesNotifier extends _$TextStylesNotifier {
  @override
  TextStylesTheme build() {
    final brightness = ref.watch(brightnessNotifierProvider);
    final colors = ref.watch(colorsProvider(brightness));

    final baseStyle = TextStyle(color: colors.text, decoration: TextDecoration.none, fontFamily: 'Lato');

    return TextStylesTheme(
      headline: baseStyle.copyWith(fontWeight: FontWeight.w800, fontSize: 28.0),
      subHeadline: baseStyle.copyWith(fontWeight: FontWeight.w400, fontSize: 20.0),
      title: baseStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 18.0),
      subtitle: baseStyle.copyWith(fontWeight: FontWeight.w400, fontSize: 18.0),
      cardTitle: baseStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 14.0),
      cardDescription: baseStyle.copyWith(fontWeight: FontWeight.w300, fontSize: 13.0, height: 1.2),
      textField: baseStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
      emoji: baseStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 24.0),
      buttonText: baseStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        letterSpacing: 0.2,
        color: colors.background,
      ),
      hint: baseStyle.copyWith(fontWeight: FontWeight.w400, fontSize: 16.0, color: colors.dark),
      small: baseStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 8.0, color: colors.dark),
      snackbar: baseStyle.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0, letterSpacing: 0.2, height: 1.2),
    );
  }
}

@freezed
abstract class TextStylesTheme with _$TextStylesTheme {
  const factory TextStylesTheme({
    required TextStyle headline,
    required TextStyle subHeadline,
    required TextStyle title,
    required TextStyle subtitle,
    required TextStyle cardTitle,
    required TextStyle cardDescription,
    required TextStyle textField,
    required TextStyle emoji,
    required TextStyle buttonText,
    required TextStyle hint,
    required TextStyle small,
    required TextStyle snackbar,
  }) = _TextStylesTheme;
}

extension TextStylesExtension on WidgetRef {
  TextStylesTheme get textStyle => watch(textStylesNotifierProvider);
}
