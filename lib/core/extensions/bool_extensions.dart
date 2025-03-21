extension BoolExtensions on bool {
  bool get not => !this;
  int compareTo(bool b) {
    if (this && b) return 0;
    if (this && !b) return -1;
    if (!this && b) return 1;
    return 0;
  }
}
