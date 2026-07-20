import 'dart:ui';
import 'package:chatify/core/extensions/nullable_extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class JsonHelpers {
  static String intToString(int v) => v.toString();
  static String numToString(num v) => v.toString();
  static String? intToStringNull(int? v) => v.toString();
  static int toInt(dynamic v) => int.parse(v.toString());
  static num toNum(dynamic v) => num.parse(v.toString());
  static int? toIntNull(Object? v) => v.nmap(toInt);
  static bool yesNoToBool(dynamic v) => v == "Yes";
  static String yesNoToString(dynamic v) => v == true ? "Yes" : "No";
  static DateTime? stringToDateTimeNull(String? v) {
    if (v == "None") return null;
    return v.nmap<DateTime?>(DateTime.tryParse);
  }

  static String dateTimeToStringTimestamp(DateTime v) {
    final timestamp = DateFormat('yyyy-MM-dd HH:mm:s').format(v);
    return timestamp;
  }

  static Color? maybeToColor(Object? o) {
    if (o is! String) return null;
    if (o == "") return null;
    return stringToColor(o);
  }

  static Color stringToColor(String o) {
    final List<int> colorComposition = o
        .split(",")
        .map((s) => int.parse(s.trim()))
        .toList();

    return Color.fromARGB(
      colorComposition[0],
      colorComposition[1],
      colorComposition[2],
      colorComposition[3],
    );
  }

  static String colorToString(Color c) {
    return [c.a, c.r, c.g, c.b].map((e) => e.toString()).join(", ");
  }

  static String? maybeColorToString(Color? c) {
    return c.nmap(colorToString);
  }
}
