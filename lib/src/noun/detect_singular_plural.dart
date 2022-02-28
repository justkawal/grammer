part of grammer;

bool _isSingular(String word) {
  word = word.split(RegExp(r'/\W/'))[0].toLowerCase().trim();
  // dictionary detections
  if (_isNotCountable(word)) {
    return true;
  } else if (_Exceptions.instance.singular2plural[word] != null) {
    return true;
  } else if (_Exceptions.instance.plural2singular[word] != null) {
    return false;
  }
  // pattern detection
  for (var pattern in singularPatterns) {
    if (pattern.hasMatch(word)) return true;
  }
  for (var pattern in pluralPatterns) {
    if (pattern.hasMatch(word)) return false;
  }
  return true;
}

bool _isPlural(String word) {
  word = word.split(RegExp(r'/\W/'))[0].toLowerCase().trim();
  // dictionary detections
  if (_isNotCountable(word)) return true;
  return !_isSingular(word);
}
