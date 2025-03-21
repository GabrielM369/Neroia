extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> separatedBy(T separator) sync* {
    final iter = iterator;
    if (!iter.moveNext()) {
      return;
    }
    yield iter.current;
    while (iter.moveNext()) {
      yield separator;
      yield iter.current;
    }
  }
}
