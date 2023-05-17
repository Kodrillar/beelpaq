import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//TODO: Add major theme colors => Beelpaqo & Beelpaqi
enum AppColors {
  transparent(Colors.transparent),
  amber(Color(0xFFFFD101)),
  black(Colors.black);

  const AppColors(this.color);
  final Color color;
}

abstract class BaseTheme {
  Brightness get brightness;
  Color get primary;
  Color get onPrimary;
  Color get secondary;
  Color get onSecondary;
  Color get error;
  Color get onError;
  Color get background;
  Color get onBackground;
  Color get surface;
  Color get onSurface;
}

class Beelpaqi extends BaseTheme {
  @override
  Brightness get brightness => Brightness.light;
  @override
  Color get primary => AppColors.amber.color;
  @override
  Color get onPrimary => AppColors.black.color;
  @override
  Color get secondary => Colors.blue;
  @override
  Color get onSecondary => Colors.blue;
  @override
  Color get error => Colors.blue;
  @override
  Color get onError => Colors.blue;
  @override
  Color get background => Colors.blue;
  @override
  Color get onBackground => Colors.blue;
  @override
  Color get surface => Colors.blue;
  @override
  Color get onSurface => Colors.blue;
}

class Beelpaqo extends BaseTheme {
  @override
  Brightness get brightness => Brightness.light;
  @override
  Color get primary => Colors.blue;
  @override
  Color get onPrimary => Colors.blue;
  @override
  Color get secondary => Colors.blue;
  @override
  Color get onSecondary => Colors.blue;
  @override
  Color get error => Colors.blue;
  @override
  Color get onError => Colors.blue;
  @override
  Color get background => Colors.blue;
  @override
  Color get onBackground => Colors.blue;
  @override
  Color get surface => Colors.blue;
  @override
  Color get onSurface => Colors.blue;
}

//? Temporarily providing one theme
final baseThemeProvider = Provider<BaseTheme>((ref) => Beelpaqi());
