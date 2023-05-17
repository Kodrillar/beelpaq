import 'package:beelpaq/src/core/widgets/custom_error_view.dart';
import 'package:beelpaq/src/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:beelpaq/src/features/transaction/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { signUp, signIn, home }

class AppRouter {
  GoRouter getGorouter() => GoRouter(
        debugLogDiagnostics: true,
        initialLocation: '/${AppRoutes.signUp.name}',
        routes: <RouteBase>[
          GoRoute(
            path: '/${AppRoutes.signUp.name}',
            name: AppRoutes.signUp.name,
            builder: (context, state) => const SignUpScreen(),
          ),
          GoRoute(
            path: '/${AppRoutes.home.name}',
            name: AppRoutes.home.name,
            builder: (context, state) => const Home(),
          )
        ],
        errorBuilder: (context, state) => CustomErrorView(
          descriptionText: 'Page not found!',
          buttonChild: const Text('Go Home'),
          onPressed: () => context.goNamed(AppRoutes.home.name),
        ),
      );
}

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

final goRouterProvider = Provider<GoRouter>((ref) {
  return ref.watch(appRouterProvider).getGorouter();
});
