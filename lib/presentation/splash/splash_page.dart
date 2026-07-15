import 'package:flutter/material.dart';

import 'widgets/splash_logo.dart';
import 'widgets/splash_title.dart';
import 'widgets/splash_loader.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SplashLogo(),
            const SizedBox(height: 30),
            const SplashTitle(),
            const SizedBox(height: 40),
            const ProgressiveDots(),
          ],
        ),
      ),
    );
  }
}
