import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'colors.freezed.dart';
part 'colors.g.dart';

const blueGrey = Color(0xFF444444);
const lightGrey = Color(0xFFDADCDE);
const white = Color(0xFFFFFFFF);
const primary = Color(0xFFAD55FF);
const secondary = Color(0xFF5194FF);

final colorsProvider = Provider.family<ColorsTheme, Brightness>(
  (ref, brightness) => ColorsTheme(
    brightness: brightness,
    dark: const LightDarkColor(light: blueGrey, dark: blueGrey),
    lightGrey: const LightDarkColor(light: lightGrey, dark: lightGrey),
    darkGrey: const LightDarkColor(light: Color(0xFF656565), dark: Color(0xFF656565)),
    light: const LightDarkColor(light: Color(0xFFFFFDE8), dark: Color(0xFFFFFDE8)),
    background: const LightDarkColor(light: white, dark: white),
    primary: const LightDarkColor(light: primary, dark: primary),
    text: const LightDarkColor(light: Colors.black, dark: Colors.black),
    secondary: const LightDarkColor(light: secondary, dark: secondary),
    error: const LightDarkColor(light: Color(0xFFB71C1C), dark: Color(0xFFB71C1C)),
    shadow: const LightDarkColor(light: blueGrey, dark: blueGrey),
  ),
);

class ColorsTheme extends ChangeNotifier {
  final Brightness brightness;

  final LightDarkColor _dark;
  Color get dark => _dark.toColor(brightness);

  final LightDarkColor _lightGrey;
  Color get lightGrey => _lightGrey.toColor(brightness);

  final LightDarkColor _darkGrey;
  Color get darkGrey => _darkGrey.toColor(brightness);

  final LightDarkColor _light;
  Color get light => _light.toColor(brightness);

  final LightDarkColor _primary;
  Color get primary => _primary.toColor(brightness);

  final LightDarkColor _secondary;
  Color get secondary => _secondary.toColor(brightness);

  final LightDarkColor _background;
  Color get background => _background.toColor(brightness);

  final LightDarkColor _shadow;
  Color get shadow => _shadow.toColor(_shadow);

  final LightDarkColor _error;
  Color get error => _error.toColor(brightness);

  final LightDarkColor _text;
  Color get text => _text.toColor(brightness);

  ColorsTheme({
    required this.brightness,
    required LightDarkColor dark,
    required LightDarkColor lightGrey,
    required LightDarkColor darkGrey,
    required LightDarkColor light,
    required LightDarkColor background,
    required LightDarkColor primary,
    required LightDarkColor secondary,
    required LightDarkColor error,
    required LightDarkColor shadow,
    required LightDarkColor text,
  }) : _dark = dark,
       _lightGrey = lightGrey,
       _darkGrey = darkGrey,
       _light = light,
       _primary = primary,
       _secondary = secondary,
       _error = error,
       _shadow = shadow,
       _text = text,
       _background = background;
}

extension ColorsExtension on WidgetRef {
  ColorsTheme get colors {
    final brightness = watch(brightnessNotifierProvider);
    return watch(colorsProvider(brightness));
  }
}

@freezed
abstract class LightDarkColor with _$LightDarkColor {
  const LightDarkColor._();

  const factory LightDarkColor({required Color light, required Color dark}) = _LightDarkColor;

  Color toColor(brightness) => brightness == Brightness.light ? light : dark;
}

@riverpod
class BrightnessNotifier extends _$BrightnessNotifier {
  @override
  Brightness build() {
    SchedulerBinding.instance.platformDispatcher.onPlatformBrightnessChanged =
        () => state = SchedulerBinding.instance.platformDispatcher.platformBrightness;

    return SchedulerBinding.instance.platformDispatcher.platformBrightness;
  }
}
