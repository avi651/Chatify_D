import 'package:go_router/go_router.dart';

import '../presentation/splash/splash_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',

      builder: (context, state) {
        return const SplashPage();
      },
    ),
  ],
);
