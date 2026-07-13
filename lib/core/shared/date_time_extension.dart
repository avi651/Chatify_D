import 'package:flutter/material.dart';

extension DateTimeExt on DateTime {
  /// Returns only the date part (time removed)
  DateTime get calendarDate => DateTime(year, month, day);

  /// Check if two dates are on the same day
  bool isSameDay(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  /// Convert DateTime to TimeOfDay
  TimeOfDay toTimeOfDay() {
    return TimeOfDay(hour: hour, minute: minute);
  }
}
