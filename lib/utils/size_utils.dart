getHomePicsHeight(double height) {
  if (height > 600) {
    return 0.45 * height;
  } else {
    return 0.3 * height;
  }
}
