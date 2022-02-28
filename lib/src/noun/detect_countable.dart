part of grammer;

bool _isCountable(String word) {
  return !uncountables.contains(word);
}

bool _isNotCountable(String word) {
  return !_isCountable(word);
}
