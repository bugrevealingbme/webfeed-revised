/// Helper extension for easier handling of possible empty Iterable<T>
extension WebFeedIterable<T> on Iterable<T> {
  /// Returns first <T> if Iterable is not empty, otherwise returns null
  T? get firstOrNull => isEmpty ? null : first;
}
