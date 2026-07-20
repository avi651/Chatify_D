import 'package:chatify/presentation/bloc/login_bloc/login_bloc/login_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_bloc/login_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginListener extends StatelessWidget {
  const LoginListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSuccess) {
          context.go("/home");
        }

        if (state.errorMessage != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        }
      },

      child: child,
    );
  }
}
