part of grammer;

String _conjugate(String input, [String to = 'VBP']) {
  // direct dictionary lookup
  final verbLookup = VerbLookup.instance;
  final lookup = verbLookup.lookup(input);
  final toIndex = _index.indexOf(to);
  if (toIndex < lookup.length) {
    return lookup[toIndex];
  }
  // passed VBP => regex solution
  else if (verbLookup.VBP[input] != null) {
    return solveVerbRegex(input, to);
  }

  // try to strip the verb
  // 'foreseeing' => 'seeing'
  final stripped = strip(input);
  if (stripped != null) {
    // the stripping result is in the dictionary (doesn't have to be VBP)
    var lookupStripped = verbLookup.lookup(stripped);
    if (toIndex < lookupStripped.length) {
      return rebuild(input, stripped, lookupStripped[toIndex]);
    }
    // the stripped verb is in VBP form (we can apply regexes)
    else if (verbLookup.VBP[stripped] != null) {
      return rebuild(input, stripped, solveVerbRegex(input, to));
    }
    // Note: we don't need to try to convert to VBP
    // since this step takes characters from the beginning
    // so it's best to convert the original (not the stripped)
    // to present
  }

  // try to convert it to VBP form
  var stem = defaultPresentVerbFunction(input);
  if (stem != null) {
    final result = verbLookup.lookup(stem);
    return toIndex < result.length ? result[toIndex] : solveVerbRegex(stem, to);
  }

  // final shot (will give wrong results if passed a verb that is not a VBP)
  return solveVerbRegex(input, to);
}

String _toPresent(String input) => _conjugate(input, 'VBP');
String _toPast(String input) => _conjugate(input, 'VBD');
String _toPastParticiple(String input) => _conjugate(input, 'VBN');
String _toPresentS(String input) => _conjugate(input, 'VBZ');
String _toGerund(String input) => _conjugate(input, 'VBG');
