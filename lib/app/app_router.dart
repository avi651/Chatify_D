import 'package:chatify/presentation/home/home_page.dart';
import 'package:chatify/presentation/login/login_page.dart';
import 'package:chatify/presentation/splash/splash_page.dart';
import 'package:chatify/presentation/chat_detail/chat_detail_page.dart';

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

    GoRoute(
      path: '/home',
      name: 'home',

      builder: (context, state) {
        return const HomePage();
      },
    ),

    GoRoute(
      path: '/chat/:conversationId',

      name: 'chatDetail',

      builder: (context, state) {
        final conversationId = int.parse(
          state.pathParameters['conversationId']!,
        );

        final title = state.extra as String? ?? "Chat";

        return ChatDetailPage(conversationId: conversationId, title: title);
      },
    ),
  ],
);
