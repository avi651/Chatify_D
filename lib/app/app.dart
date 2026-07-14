import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di/injection.dart';
import '../core/theme/bloc/theme_bloc.dart';
import '../core/theme/bloc/theme_state.dart';

import 'app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (_) => getIt<ThemeBloc>(),

      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,

            theme: ThemeData.light(useMaterial3: true),

            darkTheme: ThemeData.dark(useMaterial3: true),

            themeMode: state.selectedThemeMode,

            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
