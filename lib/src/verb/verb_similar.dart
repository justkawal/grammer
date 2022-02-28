part of grammer;

String? _strip(String verb) {
  final verbLookUp = VerbLookup.instance;
  if (verb.length < 2) {
    return null;
  }
  verb = verb.substring(1);
  if (verbLookUp.lookup(verb).isNotEmpty) {
    return verb;
  } else {
    return _strip(verb);
  }
}

String _rebuild(String original, String stripped, String conjugated) {
  var rebuilt =
      original.substring(0, original.indexOf(stripped) + stripped.length);
  rebuilt = original.split(stripped).join(conjugated);
  return rebuilt;
}
