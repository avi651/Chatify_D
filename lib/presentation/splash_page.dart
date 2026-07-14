import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:chatify/core/theme/bloc/theme_events.dart';
import 'package:chatify/core/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final dark = state.selectedThemeMode == ThemeMode.dark;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Text(
                  "Chatify",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                Switch(
                  value: dark,

                  onChanged: (value) {
                    context.read<ThemeBloc>().add(
                      ThemeEvents.setThemeMode(
                        mode: value ? ThemeMode.dark : ThemeMode.light,
                      ),
                    );
                  },
                ),

                Text(dark ? "Dark Mode" : "Light Mode"),
              ],
            ),
          );
        },
      ),
    );
  }
}
