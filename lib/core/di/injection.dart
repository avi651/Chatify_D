import 'package:get_it/get_it.dart';

import '../theme/bloc/theme_bloc.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
}
