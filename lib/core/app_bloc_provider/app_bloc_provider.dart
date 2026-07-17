import 'package:chatify/core/di/injection.dart';
import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Login Validation
        BlocProvider<LoginValidationBloc>(
          create: (_) => getIt<LoginValidationBloc>(),
        ),

        // Theme
        BlocProvider<ThemeBloc>(create: (_) => getIt<ThemeBloc>()),
      ],

      child: child,
    );
  }
}
