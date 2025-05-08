import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neroia_app/core/theme/colors.dart';
import 'package:neroia_app/core/theme/textstyles.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final Provider<ThemeData> lightThemeProvider = Provider<ThemeData>((Ref<ThemeData> ref) {
  final ColorsTheme colors = ref.read(colorsProvider(Brightness.light));
  final TextStylesTheme textStyle = ref.read(textStylesNotifierProvider);

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
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      minVerticalPadding: 16,
      subtitleTextStyle: textStyle.cardDescription.copyWith(color: colors.darkGrey),
    ),
    splashFactory: NoSplash.splashFactory,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colors.text,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: colors.light,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentTextStyle: textStyle.title.copyWith(
        color: colors.light,
        letterSpacing: 0.2,
        height: 1.2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      color: colors.background,
      titleTextStyle: textStyle.title,
    ),
    cardTheme: CardTheme(
      color: colors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
    ),
    iconTheme: IconThemeData(
      color: colors.darkGrey,
      size: 16,
    ),
    navigationBarTheme: NavigationBarThemeData(
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(
            color: colors.primary,
            size: 26,
          );
        }
        return IconThemeData(
          color: colors.darkGrey,
          size: 26,
        );
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(color: colors.primary, fontSize: 12);
        }
        return TextStyle(color: colors.darkGrey, fontSize: 12);
      }),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      backgroundColor: colors.background,
      surfaceTintColor: Colors.transparent,
      indicatorColor: Colors.transparent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: colors.darkGrey),
      filled: true,
      fillColor: colors.lightGrey.withAlpha(102),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colors.primary, width: 2),
      ),
      contentPadding: const EdgeInsets.all(16),
    ),
  );
});

final Provider<ThemeData> darkThemeProvider = Provider<ThemeData>((Ref<ThemeData> ref) {
  final ColorsTheme colors = ref.read(colorsProvider(Brightness.light));
  final TextStylesTheme textStyle = ref.read(textStylesNotifierProvider);

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
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      minVerticalPadding: 16,
      subtitleTextStyle: textStyle.cardDescription.copyWith(color: colors.darkGrey),
    ),
    splashFactory: NoSplash.splashFactory,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colors.text,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      closeIconColor: colors.light,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentTextStyle: textStyle.title.copyWith(
        color: colors.light,
        letterSpacing: 0.2,
        height: 1.2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      color: colors.background,
      titleTextStyle: textStyle.title,
    ),
    cardTheme: CardTheme(
      color: colors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
    ),
    iconTheme: IconThemeData(
        color: colors.darkGrey,
        size: 16,
    ),
    navigationBarTheme: NavigationBarThemeData(
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(
            color: colors.primary,
            size: 26,
          );
        }
        return IconThemeData(
          color: colors.darkGrey,
          size: 26,
        );
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(color: colors.primary, fontSize: 12);
        }
        return TextStyle(color: colors.darkGrey, fontSize: 12);
      }),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      backgroundColor: colors.background,
      surfaceTintColor: Colors.transparent,
      indicatorColor: Colors.transparent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: colors.darkGrey),
      filled: true,
      fillColor: colors.lightGrey.withAlpha(102),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colors.primary, width: 2),
      ),
      contentPadding: const EdgeInsets.all(16),
    ),
  );
});
