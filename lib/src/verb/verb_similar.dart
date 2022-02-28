part of grammer;

String? strip(String verb) {
  final verbLookUp = VerbLookup.instance;
  if (verb.length < 2) {
    return null;
  }
  verb = verb.substring(1);
  if (verbLookUp.lookup(verb).isNotEmpty) {
    return verb;
  } else {
    return strip(verb);
  }
}

String rebuild(String original, String stripped, String conjugated) {
  var rebuilt =
      original.substring(0, original.indexOf(stripped) + stripped.length);
  rebuilt = original.split(stripped).join(conjugated);
  return rebuilt;
}
