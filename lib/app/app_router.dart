import 'package:chatify/presentation/login/login_page.dart';
import 'package:chatify/presentation/splash/splash_page.dart';

import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/splash',

  routes: [
    GoRoute(
      path: '/splash',

      name: 'splash',

      builder: (context, state) {
        return const SplashPage();
      },
    ),

    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) {
        return const LoginPage();
      },
    ),
  ],
);
