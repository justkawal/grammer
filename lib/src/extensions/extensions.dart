part of grammer;

extension GrammerString on String {
  /// ``Adjective``
  ///
  /// Outputs the superlative of the word
  /// ````
  /// 'big'.superlative(); // biggest
  /// ````
  String superlative() => _superlative(trim().toLowerCase());

  /// ``Adjective``
  ///
  /// Outputs the comparative of the word
  /// ````
  /// 'big'.comparative(); // bigger
  /// ````
  String comparative() => _comparative(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Outputs the list of plurals.
  /// ````
  /// 'bus'.toPlural(); // [buses, busses]
  /// ````
  List<String> toPlural() => _toPlural(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Outputs the singular.
  /// ````
  /// 'bus'.toSingular(); // bus (no change)
  /// 'ellipses'.toSingular(); // ellipsis
  /// 'money'.toSingular(); // money (no change)
  /// ````
  String toSingular() => _toSingular(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Returns `true` if it's plural otherwise `false`.
  /// ````
  /// 'bus'.isPlural(); // false
  /// 'ellipses'.isPlural(); // true
  /// 'money'.isPlural(); // true
  /// ````
  bool isPlural() => _isPlural(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Returns `true` if it's isSingular otherwise `false`.
  /// ````
  /// 'bus'.isSingular(); // true
  /// 'ellipses'.isSingular(); // false
  /// 'money'.isSingular(); // true
  /// ````
  bool isSingular() => _isSingular(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Returns `true` if it's isCountable otherwise `false`.
  /// ````
  /// 'bus'.isCountable(); // true
  /// 'ellipses'.isCountable(); // true
  /// 'money'.isCountable(); // false
  /// ````
  bool isCountable() => _isCountable(trim().toLowerCase());

  /// ``Noun``
  ///
  /// Returns `true` if it's isNotCountable otherwise `false`.
  /// ````
  /// 'bus'.isNotCountable(); // false
  /// 'ellipses'.isNotCountable(); // false
  /// 'money'.isNotCountable(); // true
  /// ````
  bool isNotCountable() => _isNotCountable(trim().toLowerCase());

  /// `Verb`
  ///
  /// VBP -> Present
  ///
  /// VBD -> Past
  ///
  /// VBN -> Past Participle
  ///
  /// VBS -> PresentS
  ///
  /// VBG -> Gerund
  ///
  /// ````
  /// 'rallied'.conjugate('VBP'); // rally
  /// 'fly'.conjugate('VBD'); // flew
  /// 'throw'.conjugate('VBN'); // thrown
  /// 'rally'.conjugate('VBS'); // rallies
  /// 'die'.conjugate('VBG'); // dying
  /// ````
  String conjugate(String to) => _conjugate(trim().toLowerCase(), to);

  /// `Verb`
  ///
  /// ````
  /// 'rallied'.conjugate('VBP'); // rally
  ///
  /// // or you can use the aliases
  /// 'rallied'.toPresent(); // rally
  /// ````
  String toPresent() => _toPresent(trim().toLowerCase());

  /// `Verb`
  ///
  /// ````
  /// 'fly'.conjugate('VBD'); // flew
  ///
  /// // or you can use the aliases
  /// 'fly'.toPast(); // flew
  /// ````
  String toPast() => _toPast(trim().toLowerCase());

  /// `Verb`
  ///
  /// ````
  /// 'throw'.conjugate('VBN'); // thrown
  ///
  /// // or you can use the aliases
  /// 'throw'.toPastParticiple(); // thrown
  /// ````
  String toPastParticiple() => _toPastParticiple(trim().toLowerCase());

  /// `Verb`
  ///
  /// ````
  /// 'rally'.conjugate('VBS'); // rallies
  ///
  /// // or you can use the aliases
  /// 'rally'.toPresentS(); // rallies
  /// ````
  String toPresentS() => _toPresentS(trim().toLowerCase());

  /// `Verb`
  ///
  /// ````
  /// 'die'.conjugate('VBG'); // dying
  ///
  /// // or you can use the aliases
  /// 'die'.toGerund(); // dying
  /// ````
  String toGerund() => _toGerund(trim().toLowerCase());
}
