part of grammer;

class Grammer {
  late String _word;

  ///
  /// Instance of grammer
  /// ````
  /// Grammer grammer = Grammer('big');
  /// ````
  Grammer(String word) {
    _word = word.trim().toLowerCase();
  }

  /// ``Adjective``
  ///
  /// Outputs the superlative of the word
  /// ````
  /// Grammer grammer = Grammer('big');
  /// grammer.superlative(); // biggest
  ///
  /// or
  ///
  /// 'big'.superlative(); // biggest
  /// ````
  String superlative() => _superlative(_word);

  /// ``Adjective``
  ///
  /// Outputs the comparative of the word
  /// ````
  /// Grammer grammer = Grammer('big');
  /// grammer.comparative(); // bigger
  ///
  /// or
  ///
  /// 'big'.comparative(); // bigger
  /// ````
  String comparative() => _comparative(_word);

  /// ``Noun``
  ///
  /// Outputs the list of plurals.
  /// ````
  /// Grammer grammer = Grammer('bus');
  /// grammer.toPlural(); // [buses, busses]
  ///
  /// or
  ///
  /// 'bus'.toPlural(); // [buses, busses]
  /// ````
  List<String> toPlural() => _toPlural(_word);

  /// ``Noun``
  ///
  /// Outputs the singular.
  /// ````
  /// Grammer grammerA = Grammer('bus');
  /// Grammer grammerB = Grammer('ellipses');
  /// Grammer grammerC = Grammer('money');
  ///
  /// grammerA.toSingular(); // bus (no change)
  /// grammerB.toSingular(); // ellipsis
  /// grammerC.toSingular(); // money (no change)
  ///
  /// or
  ///
  /// 'bus'.toSingular(); // bus (no change)
  /// 'ellipses'.toSingular(); // ellipsis
  /// 'money'.toSingular(); // money (no change)
  /// ````
  String toSingular() => _toSingular(_word);

  /// ``Noun``
  ///
  /// Returns `true` if it's plural otherwise `false`.
  /// ````
  /// Grammer grammerA = Grammer('bus');
  /// Grammer grammerB = Grammer('ellipses');
  /// Grammer grammerC = Grammer('money');
  ///
  /// grammerA.isPlural(); // false
  /// grammerB.isPlural(); // true
  /// grammerC.isPlural(); // true
  ///
  /// or
  ///
  /// 'bus'.isPlural(); // false
  /// 'ellipses'.isPlural(); // true
  /// 'money'.isPlural(); // true
  /// ````
  bool isPlural() => _isPlural(_word);

  /// ``Noun``
  ///
  /// Returns `true` if it's isSingular otherwise `false`.
  /// ````
  /// Grammer grammerA = Grammer('bus');
  /// Grammer grammerB = Grammer('ellipses');
  /// Grammer grammerC = Grammer('money');
  ///
  /// grammerA.isSingular(); // true
  /// grammerB.isSingular(); // false
  /// grammerC.isSingular(); // true
  ///
  /// or
  ///
  /// 'bus'.isSingular(); // true
  /// 'ellipses'.isSingular(); // false
  /// 'money'.isSingular(); // true
  /// ````
  bool isSingular() => _isSingular(_word);

  /// ``Noun``
  ///
  /// Returns `true` if it's isCountable otherwise `false`.
  /// ````
  /// Grammer grammerA = Grammer('bus');
  /// Grammer grammerB = Grammer('ellipses');
  /// Grammer grammerC = Grammer('money');
  ///
  /// grammerA.isCountable(); // true
  /// grammerB.isCountable(); // true
  /// grammerC.isCountable(); // false
  ///
  /// or
  ///
  /// 'bus'.isCountable(); // true
  /// 'ellipses'.isCountable(); // true
  /// 'money'.isCountable(); // false
  /// ````
  bool isCountable() => _isCountable(_word);

  /// ``Noun``
  ///
  /// Returns `true` if it's isNotCountable otherwise `false`.
  /// ````
  /// Grammer grammerA = Grammer('bus');
  /// Grammer grammerB = Grammer('ellipses');
  /// Grammer grammerC = Grammer('money');
  ///
  /// grammerA.isNotCountable(); // false
  /// grammerB.isNotCountable(); // false
  /// grammerC.isNotCountable(); // true
  ///
  /// or
  ///
  /// 'bus'.isNotCountable(); // false
  /// 'ellipses'.isNotCountable(); // false
  /// 'money'.isNotCountable(); // true
  /// ````
  bool isNotCountable() => _isNotCountable(_word);

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
  /// Grammer('rallied').conjugate('VBP'); // rally
  /// Grammer('fly').conjugate('VBD'); // flew
  /// Grammer('throw').conjugate('VBN'); // thrown
  /// Grammer('rally').conjugate('VBS'); // rallies
  /// Grammer('die').conjugate('VBG'); // dying
  ///
  /// or
  ///
  /// 'rallied'.conjugate('VBP'); // rally
  /// 'fly'.conjugate('VBD'); // flew
  /// 'throw'.conjugate('VBN'); // thrown
  /// 'rally'.conjugate('VBS'); // rallies
  /// 'die'.conjugate('VBG'); // dying
  /// ````
  String conjugate(String to) => _conjugate(_word, to);

  /// `Verb`
  ///
  /// ````
  /// Grammer('rallied').conjugate('VBP'); // rally
  ///
  /// // or you can use the aliases
  /// Grammer('rallied').toPresent(); // rally
  ///
  /// or
  ///
  /// 'rallied'.conjugate('VBP'); // rally
  ///
  /// // or you can use the aliases
  /// 'rallied'.toPresent(); // rally
  /// ````
  String toPresent() => _toPresent(_word);

  /// `Verb`
  ///
  /// ````
  /// Grammer('fly').conjugate('VBD'); // flew
  ///
  /// // or you can use the aliases
  /// Grammer('fly').toPast(); // flew
  ///
  /// or
  ///
  /// 'fly'.conjugate('VBD'); // flew
  ///
  /// // or you can use the aliases
  /// 'fly'.toPast(); // flew
  /// ````
  String toPast() => _toPast(_word);

  /// `Verb`
  ///
  /// ````
  /// Grammer('throw').conjugate('VBN'); // thrown
  ///
  /// // or you can use the aliases
  /// Grammer('throw').toPastParticiple(); // thrown
  ///
  /// or
  ///
  /// 'throw'.conjugate('VBN'); // thrown
  ///
  /// // or you can use the aliases
  /// 'throw'.toPastParticiple(); // thrown
  /// ````
  String toPastParticiple() => _toPastParticiple(_word);

  /// `Verb`
  ///
  /// ````
  /// Grammer('rally').conjugate('VBS'); // rallies
  ///
  /// // or you can use the aliases
  /// Grammer('rally').toPresentS(); // rallies
  ///
  /// or
  ///
  /// 'rally'.conjugate('VBS'); // rallies
  ///
  /// // or you can use the aliases
  /// 'rally'.toPresentS(); // rallies
  /// ````
  String toPresentS() => _toPresentS(_word);

  /// `Verb`
  ///
  /// ````
  /// Grammer('die').conjugate('VBG'); // dying
  ///
  /// // or you can use the aliases
  /// Grammer('die').toGerund(); // dying
  ///
  /// or
  ///
  /// 'die'.conjugate('VBG'); // dying
  ///
  /// // or you can use the aliases
  /// 'die'.toGerund(); // dying
  /// ````
  String toGerund() => _toGerund(_word);
}
