import 'package:chatify/presentation/login/login_listener.dart';
import 'package:chatify/presentation/login/login_view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginListener(child: LoginView());
  }
}
