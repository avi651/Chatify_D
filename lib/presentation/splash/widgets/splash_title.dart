import 'package:flutter/material.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Text(
          "Chatify",

          key: const Key("splash_title"),

          style: TextStyle(
            fontSize: 40,

            fontWeight: FontWeight.bold,

            color: colorScheme.onSurface,

            letterSpacing: 1.2,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          "Connect • Chat • Share",

          key: const Key("splash_subtitle"),

          style: TextStyle(fontSize: 16, color: colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }
}
