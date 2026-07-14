import 'package:chatify/core/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(BlocProvider(create: (_) => ThemeBloc(), child: const App()));
}
