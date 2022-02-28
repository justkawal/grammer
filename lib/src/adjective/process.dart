part of grammer;

String _comparative(String word) {
  if (irregulars[word] != null) {
    return irregulars[word]![0];
  }
  for (var adjectiveRule in adjectiveRules) {
    if (!adjectiveRule.test(word)) {
      continue;
    } else {
      return adjectiveRule.comp(word);
    }
  }
  return '';
}

String _superlative(String word) {
  if (irregulars[word] != null) {
    return irregulars[word]![1];
  }
  for (var adjectiveRule in adjectiveRules) {
    if (!adjectiveRule.test(word)) {
      continue;
    } else {
      return adjectiveRule.supr(word);
    }
  }
  return '';
}
