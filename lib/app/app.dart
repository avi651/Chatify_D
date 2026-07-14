import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:chatify/core/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          title: "Chatify",

          theme: ThemeData.light(useMaterial3: true),

          darkTheme: ThemeData.dark(useMaterial3: true),

          themeMode: state.selectedThemeMode,

          home: const SplashPage(),
        );
      },
    );
  }
}
