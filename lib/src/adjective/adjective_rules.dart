part of grammer;

int _syllablesNum(String str) =>
    str.split(RegExp(r'/[aiouy]+e*|e(?!d$|ly).|[td]ed|le$/')).length;

abstract class _AdjectiveRules {
  bool test(String word);
  String comp(String word) => 'more ' + word;
  String supr(String word) => 'most ' + word;
}

class _AdjectiveRule1 extends _AdjectiveRules {
  @override
  bool test(String word) =>
      _syllablesNum(word) > 3 &&
      !(_syllablesNum(word) < 5 && RegExp(r'y$').hasMatch(word));
}

class _AdjectiveRule2 extends _AdjectiveRules {
  @override
  bool test(String word) =>
      _syllablesNum(word) > 2 && RegExp(r'ing$').hasMatch(word);
}

class _AdjectiveRule3 extends _AdjectiveRules {
  @override
  bool test(String word) =>
      _syllablesNum(word) > 2 && RegExp(r'ed$').hasMatch(word);
}

class _AdjectiveRule4 extends _AdjectiveRules {
  @override
  bool test(String word) =>
      RegExp(r'[^aeiouy][aeiouy][^rwaeiouy]$').hasMatch(word);

  @override
  String comp(String word) => word.replaceAllMapped(
      RegExp(r'([^aeiouy])$'), (Match m) => "${m[1]}${m[1]}er");

  @override
  String supr(String word) => word.replaceAllMapped(
      RegExp(r'([^aeiouy])$'), (Match m) => "${m[1]}${m[1]}est");
}

class _AdjectiveRule5 extends _AdjectiveRules {
  @override
  bool test(String word) => RegExp(r'y$').hasMatch(word);
  @override
  String comp(String word) => word.replaceAll(RegExp(r'y$'), 'ier');
  @override
  String supr(String word) => word.replaceAll(RegExp(r'y$'), 'iest');
}

class _AdjectiveRule6 extends _AdjectiveRules {
  @override
  bool test(String word) => RegExp(r'e$').hasMatch(word);
  @override
  String comp(String word) => word.replaceAll(RegExp(r'e$'), 'er');
  @override
  String supr(String word) => word.replaceAll(RegExp(r'e$'), 'est');
}

class _AdjectiveRule7 extends _AdjectiveRules {
  @override
  bool test(String word) => true;
  @override
  String comp(String word) => word + 'er';
  @override
  String supr(String word) => word + 'est';
}

final adjectiveRules = <_AdjectiveRules>[
  _AdjectiveRule1(),
  _AdjectiveRule2(),
  _AdjectiveRule3(),
  _AdjectiveRule4(),
  _AdjectiveRule5(),
  _AdjectiveRule6(),
  _AdjectiveRule7(),
];
