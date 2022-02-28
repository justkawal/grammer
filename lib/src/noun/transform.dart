part of grammer;

typedef _PatterReplacement = String Function(Match);

class _Pattern {
  final Map<String, dynamic> map;
  _Pattern(this.map);

  RegExp get regexp => map['regexp'] as RegExp;
  _PatterReplacement get replacement =>
      map['replacement'] as _PatterReplacement;
}

List<String> _toPlural(String word) {
  if (_isPlural(word)) {
    return <String>[word];
  } else if (_Exceptions.instance.singular2plural[word] != null) {
    return <String>[..._Exceptions.instance.singular2plural[word]!];
  }
  for (var map in toPluralPattern) {
    final pattern = _Pattern(map);
    if (pattern.regexp.hasMatch(word)) {
      return <String>[
        word.replaceAllMapped(pattern.regexp, pattern.replacement)
      ];
    }
  }
  return <String>[word];
}

String _toSingular(String word) {
  if (_isSingular(word)) {
    return word;
  } else if (_Exceptions.instance.plural2singular[word] != null) {
    return _Exceptions.instance.plural2singular[word]![0];
  }
  for (var map in toSingularPattern) {
    final pattern = _Pattern(map);
    if (pattern.regexp.hasMatch(word)) {
      return word.replaceAllMapped(pattern.regexp, pattern.replacement);
    }
  }
  return word;
}
