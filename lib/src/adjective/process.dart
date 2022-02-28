part of grammer;

String _comparative(String word) {
  if (_irregulars[word] != null) {
    return _irregulars[word]![0];
  }
  for (var adjectiveRule in _adjectiveRules) {
    if (!adjectiveRule.test(word)) {
      continue;
    } else {
      return adjectiveRule.comp(word);
    }
  }
  return '';
}

String _superlative(String word) {
  if (_irregulars[word] != null) {
    return _irregulars[word]![1];
  }
  for (var adjectiveRule in _adjectiveRules) {
    if (!adjectiveRule.test(word)) {
      continue;
    } else {
      return adjectiveRule.supr(word);
    }
  }
  return '';
}
