extension NullableExt<T> on T? {
  V? nmap<V>(V Function(T item) mapper) {
    return this == null ? null : mapper(this as T);
  }
}
