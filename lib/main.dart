import 'dart:io';

import 'package:beelpaq/src/core/widgets/custom_error_view.dart';
import 'package:beelpaq/src/app.dart';
import 'package:beelpaq/src/core/utils/logger/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* Allow only error, warning, and fatal logs
  //* to be logged on the console, in release mode, and then
  //* all logs, excluding verbose ones,
  //* to be logged on the console, in debug mode.
  //*
  //* More on logging: https://pub.dev/packages/logger
  // */
  if (kReleaseMode) {
    Logger.level = Level.warning;
  } else {
    Logger.level = Level.debug;
  }

  //* This handles errors that are not caught by
  //* 'Flutter.onError'.
  //* More on error handlers: https://docs.flutter.dev/testing/errors
  // */
  PlatformDispatcher.instance.onError = (errorObject, stackTrace) {
    log.e('PlATFORM DISPATCHER: $errorObject \nSTACK: $stackTrace');
    return true;
  };

  //**
  //* This callback function handles errors
  //* caught by Flutter and overrides the
  //* default error presentation with a custom presenter/logger.

  //* Default error presenter: FlutterError.presentError(details);
  // */
  FlutterError.onError = (FlutterErrorDetails details) {
    log.e('Flutter Error: $details');
  };

  //* This callback function displays the widget
  //* returned due to errors that occur
  //* during any build phase.
  // */
  ErrorWidget.builder = (FlutterErrorDetails details) => CustomErrorView(
        onPressed: () => exit(1),
        buttonChild: const Text('Exit'),
      );

  runApp(
    const ProviderScope(
      child: BeelpaqApp(),
    ),
  );
}
