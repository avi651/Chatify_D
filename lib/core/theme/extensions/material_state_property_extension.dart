import 'package:flutter/material.dart';

extension WidgetStatePropertyExt<T> on T {
  WidgetStateProperty<T> msAll() {
    return WidgetStatePropertyAll<T>(this);
  }

  WidgetStateProperty<T> materialPropertyBuilder({
    T? pressed,
    T? disabled,
    T? hover,
  }) {
    return WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.pressed)) {
        return pressed ?? this;
      }

      if (states.contains(WidgetState.disabled)) {
        return disabled ?? this;
      }

      if (states.contains(WidgetState.hovered)) {
        return hover ?? this;
      }

      return this;
    });
  }
}
