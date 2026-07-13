class DefaultColorException {
  final String message =
      'This color is not implemented or do not exist. Please check';

  @override
  String toString() {
    return 'Exception: $message';
  }
}
