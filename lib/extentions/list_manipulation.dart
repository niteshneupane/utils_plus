extension NullSafeListCheck on List? {
  /// check nullable and empty in nullable list
  bool get isNotNullAndEmpty {
    return this != null && this!.isNotEmpty;
  }
}

extension ListnumManipulation on List<num> {
  /// Get total from list of num
  num get total {
    return reduce((a, b) => a + b);
  }
}
