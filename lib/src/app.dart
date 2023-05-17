import 'package:beelpaq/src/routing/global_app_route.dart';
import 'package:beelpaq/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BeelpaqApp extends ConsumerWidget {
  const BeelpaqApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeProvider);
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Beelpaq',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getBeelpaqiTheme(context),
    );
  }
}
