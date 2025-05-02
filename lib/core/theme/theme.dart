import 'package:flutter/material.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final lightThemeProvider = Provider<ThemeData>((ref) {
  final colors = ref.read(colorsProvider(Brightness.light));
  final textStyle = ref.read(textStylesNotifierProvider);

  return ThemeData(
    scaffoldBackgroundColor: colors.background,
    canvasColor: colors.background,
    colorScheme: ColorScheme(
      primary: colors.primary,
      brightness: Brightness.light,
      onPrimary: colors.primary,
      secondary: colors.primary,
      onSecondary: colors.primary,
      error: colors.primary,
      onError: colors.primary,
      surface: colors.primary,
      surfaceTint: colors.text,
      onSurface: colors.text,
    ),
    textTheme: const TextTheme().apply(
      bodyColor: colors.text,
      displayColor: colors.text,
      decoration: TextDecoration.none,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      minVerticalPadding: 16,
      subtitleTextStyle: textStyle.cardDescription.copyWith(color: colors.darkGrey),
    ),
    splashFactory: NoSplash.splashFactory,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colors.text,
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: colors.light,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      contentTextStyle: textStyle.title.copyWith(
        color: colors.light,
        letterSpacing: 0.2,
        height: 1.2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
    ),
  );
});

final darkThemeProvider = Provider<ThemeData>((ref) {
  final colors = ref.read(colorsProvider(Brightness.light));
  final textStyle = ref.read(textStylesNotifierProvider);

  return ThemeData(
    scaffoldBackgroundColor: colors.background,
    canvasColor: colors.background,
    colorScheme: ColorScheme(
      primary: colors.primary,
      brightness: Brightness.light,
      onPrimary: colors.primary,
      secondary: colors.primary,
      onSecondary: colors.primary,
      error: colors.primary,
      onError: colors.primary,
      surface: colors.primary,
      surfaceTint: colors.text,
      onSurface: colors.text,
    ),
    textTheme: const TextTheme().apply(
      bodyColor: colors.text,
      displayColor: colors.text,
      decoration: TextDecoration.none,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      minVerticalPadding: 16,
      subtitleTextStyle: textStyle.cardDescription.copyWith(color: colors.darkGrey),
    ),
    splashFactory: NoSplash.splashFactory,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colors.text,
      elevation: 0.0,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: colors.light,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      contentTextStyle: textStyle.title.copyWith(
        color: colors.light,
        letterSpacing: 0.2,
        height: 1.2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    ),
  );
});
