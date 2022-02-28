part of grammer;

class Grammer {
  late String _word;
  Grammer(String word) {
    _word = word.trim().toLowerCase();
  }

  // Adjective
  String superlative() => _superlative(_word);
  String comparative() => _comparative(_word);

  // Noun
  List<String> toPlural() => _toPlural(_word);
  String toSingular() => _toSingular(_word);
  bool isPlural() => _isPlural(_word);
  bool isSingular() => _isSingular(_word);
  bool isCountable() => _isCountable(_word);
  bool isNotCountable() => _isNotCountable(_word);

  // Verb
  String conjugate(String to) => _conjugate(_word, to);
  String toPresent() => _toPresent(_word);
  String toPast() => _toPast(_word);
  String toPastParticiple() => _toPastParticiple(_word);
  String toPresentS() => _toPresentS(_word);
  String toGerund() => _toGerund(_word);
}
