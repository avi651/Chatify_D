// =====================================================
// theme_bloc.dart
// =====================================================

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chatify/core/theme/bloc/theme_events.dart';
import 'package:chatify/core/theme/bloc/theme_state.dart';

import 'package:flutter/material.dart';

class ThemeBloc extends Bloc<ThemeEvents, ThemeState> {
  ThemeBloc() : super(const ThemeState(selectedThemeMode: ThemeMode.system)) {
    on<SetThemeModeEvent>(_setThemeMode);
  }

  // =====================================================
  // Set Theme Mode
  // =====================================================

  FutureOr<void> _setThemeMode(
    SetThemeModeEvent event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(selectedThemeMode: event.mode));
  }
}
