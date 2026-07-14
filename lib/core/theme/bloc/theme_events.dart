// =====================================================
// theme_events.dart
// =====================================================

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_events.freezed.dart';

@freezed
abstract class ThemeEvents with _$ThemeEvents {
  const factory ThemeEvents.setThemeMode({required ThemeMode mode}) =
      SetThemeModeEvent;
}
