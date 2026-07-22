import 'package:chatify/core/di/injection.dart';
import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:chatify/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:chatify/presentation/bloc/home_bloc/home_event.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_bloc/login_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc/login_validation_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginValidationBloc>(
          create: (_) => getIt<LoginValidationBloc>(),
        ),

        BlocProvider<LoginBloc>(create: (_) => getIt<LoginBloc>()),

        BlocProvider<ThemeBloc>(create: (_) => getIt<ThemeBloc>()),

        BlocProvider<HomeBloc>(
          create: (_) {
            final bloc = getIt<HomeBloc>();

            bloc.add(const HomeEvent.loadConversations());

            bloc.add(const HomeEvent.connectSocket());

            return bloc;
          },
        ),
      ],

      child: child,
    );
  }
}
