import 'package:beelpaq/src/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/constants.dart';

class AppTheme {
  AppTheme(BaseTheme baseTheme) : _baseTheme = baseTheme;
  final BaseTheme _baseTheme;

  ThemeData getBeelpaqiTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        colorScheme: ColorScheme(
          brightness: _baseTheme.brightness,
          primary: _baseTheme.primary,
          onPrimary: _baseTheme.onPrimary,
          secondary: _baseTheme.secondary,
          onSecondary: _baseTheme.onSecondary,
          background: _baseTheme.background,
          onBackground: _baseTheme.onBackground,
          error: _baseTheme.error,
          onError: _baseTheme.onError,
          surface: _baseTheme.surface,
          onSurface: _baseTheme.onSurface,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            fixedSize: const MaterialStatePropertyAll(Size.fromHeight(48)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(kBorderRadius),
                side: BorderSide.merge(
                  BorderSide(color: AppColors.black.color, width: 0.5),
                  BorderSide(color: AppColors.black.color, width: 0.5),
                ),
              ),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          systemOverlayStyle: _baseTheme.brightness == Brightness.light
              ? SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle.light,
          backgroundColor: AppColors.transparent.color,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: _baseTheme.primary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
            borderSide: BorderSide.merge(
              BorderSide(color: _baseTheme.onPrimary, width: 0.5),
              BorderSide(color: _baseTheme.onPrimary, width: 0.5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
            borderSide: BorderSide.merge(
              BorderSide(color: _baseTheme.onPrimary.withOpacity(.8), width: 1),
              BorderSide(color: _baseTheme.onPrimary.withOpacity(.8), width: 1),
            ),
          ),
        ),
      );

  ThemeData getBeelpaqoTheme() => ThemeData();
}

final themeProvider = Provider<AppTheme>(
  (ref) => AppTheme(ref.watch(baseThemeProvider)),
);
