import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app.dart';
import 'app/app_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    BlocProvider(
      create: (_) => ThemeBloc(),

      child: ModularApp(module: AppModule(), child: const App()),
    ),
  );
}
