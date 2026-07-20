extension DoubleExtension on double {
  String toStr({int? decimals}) {
    return decimals != null ? toStringAsFixed(decimals) : toString();
  }
}
