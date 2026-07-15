import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      key: const Key("splash_logo"),

      height: 120,

      width: 120,

      decoration: BoxDecoration(
        color: colorScheme.primary,

        borderRadius: BorderRadius.circular(30),
      ),

      child: Icon(Icons.chat, size: 70, color: colorScheme.onPrimary),
    );
  }
}
