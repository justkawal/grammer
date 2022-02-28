part of grammer;

String? defaultPresentVerbFunction(String verb) {
  // Gerunds
  final verbLookup = VerbLookup.instance;
  if (end(verb, "ing")) {
    var a = verbLookup.VBP[verb.replaceAll(r'/ing$/', "")];
    if (a != null) {
      return a[0];
    }
    var b = verbLookup.VBP[verb.replaceAll(r'/ing$/', "e")];
    if (b != null) {
      return b[0];
    }
    var c = verbLookup.VBP[verb.replaceAll(r'/.ing$/', "")];
    if (c != null) {
      return c[0];
    }
    var d = verbLookup.VBP[verb.replaceAll(r'/ying$/', "ie")];
    if (d != null) {
      return d[0];
    }
  }
  // VBZs
  else if (end(verb, "s")) {
    var a = verbLookup.VBP[verb.replaceAll(r'/s$/', "")];
    if (a != null) {
      return a[0];
    }
    var b = verbLookup.VBP[verb.replaceAll(r'/es$/', "")];
    if (b != null) {
      return b[0];
    }
    var c = verbLookup.VBP[verb.replaceAll(r'/ies$/', "y")];
    if (c != null) {
      return c[0];
    }
  }
  // VBNs & VBDs
  else if (end(verb, "ed")) {
    var a = verbLookup.VBP[verb.replaceAll(r'/ed$/', "")];
    if (a != null) {
      return a[0];
    }
    var b = verbLookup.VBP[verb.replaceAll(r'/d$/', "")];
    if (b != null) {
      return b[0];
    }
    var c = verbLookup.VBP[verb.replaceAll(r'/ied$/', "y")];
    if (c != null) {
      return c[0];
    }
    var d = verbLookup.VBP[verb.replaceAll(r'/ed$/', "y")];
    if (d != null) {
      return d[0];
    }
    var e = verbLookup.VBP[verb.replaceAll(r'/ed$/', "e")];
    if (e != null) {
      return e[0];
    }
    var f = verbLookup.VBP[verb.replaceAll(r'/.ed$/', "")];
    if (f != null) {
      return f[0];
    }
  }
  // finally defaults to porter stemmer
  return (verbLookup.VBP[PorterStemmer().stem(verb)] ?? <String?>[null])[0];
}

bool end(String str, String substring) {
  int len = -substring.length;
  if (len < -str.length) {
    len = 0;
  } else {
    len += str.length;
  }
  return str.substring(len) == substring;
}
