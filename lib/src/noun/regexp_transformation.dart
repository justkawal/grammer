part of grammer;

final _toPluralPattern = <Map<String, dynamic>>[
  // appendix, spadix, radix
  {
    'regexp': RegExp(r'dix$'),
    'replacement': (Match m) {
      return 'dices';
    }
  },
  // pooch
  {
    'regexp': RegExp(r'ooch$'),
    'replacement': (Match m) {
      return '${m[1]}chs';
    }
  },
  // man, policeman, fireman,
  {
    'regexp': RegExp(r'(m)an$'),
    'replacement': (Match m) {
      return '${m[1]}en';
    }
  },
  // person
  {
    'regexp': RegExp(r'(pe)rson$'),
    'replacement': (Match m) {
      return '${m[1]}ople';
    }
  },
  // child
  {
    'regexp': RegExp(r'(child)$'),
    'replacement': (Match m) {
      return '${m[1]}ren';
    }
  },
  // ox
  {
    'regexp': RegExp(r'^(ox)$'),
    'replacement': (Match m) {
      return '${m[1]}en';
    }
  },
  // axis
  {
    'regexp': RegExp(r'(ax|test)is$'),
    'replacement': (Match m) {
      return '${m[1]}es';
    }
  },
  // fungus, locus, nucleus, radius,
  {
    'regexp': RegExp(r'(op|ir|umn|am|ll|ct|oc|ng|le|di|ul|ab|rmin|or|in)us$'),
    'replacement': (Match m) {
      return '${m[1]}i';
    }
  },
  // status
  {
    'regexp': RegExp(r'(alias|status)$'),
    'replacement': (Match m) {
      return '${m[1]}es';
    }
  },
  // Syllabus thrombus
  {
    'regexp': RegExp(r'(bu)s$'),
    'replacement': (Match m) {
      return '${m[1]}ses';
    }
  },
  // buffalo, cargo, echo, embargo
  {
    'regexp': RegExp(r'(fal|tat|ch|rg|ott|mat|ped|et|can|er|uit|her|ad)o$'),
    'replacement': (Match m) {
      return '${m[1]}oes';
    }
  },
  // bacterium, curriculum, datum, erratum,
  {
    'regexp': RegExp(r'([aeiouy]ri|dat|cul|rat|nasi|edi|rand|ov)um$'),
    'replacement': (Match m) {
      return '${m[1]}a';
    }
  },
  // bacterium, curriculum, datum, erratum,
  {
    'regexp': RegExp(r'([aoeuiy]|er)ion$'),
    'replacement': (Match m) {
      return '${m[1]}ia';
    }
  },
  // sherion
  {
    'regexp': RegExp(r'(mat|erio|omen|hedr)on$'),
    'replacement': (Match m) {
      return '${m[1]}a';
    }
  },
  // analysis, basis, crisis, ellipsis, hypothesis
  {
    'regexp': RegExp(r'(is|ps|hes|as|ys|os|ax)is$'),
    'replacement': (Match m) {
      return '${m[1]}es';
    }
  },
  // calf elf half knife
  {
    'regexp': RegExp(r'(?:([^f])fe|([lrf])f)$'),
    'replacement': (Match m) {
      return '${m[1]}${m[2]}ves';
    }
  },
  // criterion
  {
    'regexp': RegExp(r'(hive)$'),
    'replacement': (Match m) {
      return '${m[1]}s';
    }
  },
  // ally army baby beauty
  {
    'regexp': RegExp(r'([^aeiouy]|qu)y$'),
    'replacement': (Match m) {
      return '${m[1]}ies';
    }
  },
  // alley attorney essay boy delay
  {
    'regexp': RegExp(r'([aeiouy]y)$'),
    'replacement': (Match m) {
      return '${m[1]}s';
    }
  },
  // matrix vertex index
  {
    'regexp': RegExp(r'(matr|vert|ind)(ix|ex)$'),
    'replacement': (Match m) {
      return '${m[1]}ices';
    }
  },
  // louse mouse booklouse
  {
    'regexp': RegExp(r'([m|l])ouse$'),
    'replacement': (Match m) {
      return '${m[1]}ice';
    }
  },
  // alga, alumna, antenna, larva
  {
    'regexp': RegExp(r'(alg|lumn|tenn|arv|ebul|pup|rteb|vit)a$'),
    'replacement': (Match m) {
      return '${m[1]}ae';
    }
  },
  // buzz fizz klutz quiz topaz waltz
  {
    'regexp': RegExp(r'(uz|qui|ut)(z)$'),
    'replacement': (Match m) {
      return '${m[1]}${m[2]}zes';
    }
  },
  // waltz
  {
    'regexp': RegExp(r'(opa|alt)(z)$'),
    'replacement': (Match m) {
      return '${m[1]}zes';
    }
  },
  // foot tooth
  {
    'regexp': RegExp(r'^(f|t|g)oo([thse]{1,2})$'),
    'replacement': (Match m) {
      return '${m[1]}ee${m[2]}';
    }
  },
  // plateau
  {
    'regexp': RegExp(r'([^aeiouy])eau$'),
    'replacement': (Match m) {
      return '${m[1]}eaux';
    }
  },
  // loaf
  {
    'regexp': RegExp(r'([aeiouy])f$'),
    'replacement': (Match m) {
      return '${m[1]}ves';
    }
  },
  // arch atlas ax bash bench
  {
    'regexp': RegExp(r'(x|ch|ss|sh|s)$'),
    'replacement': (Match m) {
      return '${m[1]}es';
    }
  },
  {
    'regexp': RegExp(r'o$'),
    'replacement': (Match m) {
      return 'oes';
    }
  },
  {
    'regexp': RegExp(r'$'),
    'replacement': (Match m) {
      return 's';
    }
  },
];

final toSingularPattern = [
  // babies cities universities victories
  {
    'regexp': RegExp(r'([^aeiouy]|qu)ies$'),
    'replacement': (Match m) {
      return '${m[1]}y';
    }
  },
  // buffaloes, cargoes, echoes, embargoes
  {
    'regexp':
        RegExp(r'(falo|tato|cho|rgo|otto|mato|pedo|eto|cano|ero|uito|hero)es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // axes , paralyses
  {
    'regexp': RegExp(r'(lys|xis|bas|ris|ips|thes|uros|oas|ys|ops)es$'),
    'replacement': (Match m) {
      return '${m[1]}is';
    }
  },
  // buzzes fizzes quizzes
  {
    'regexp': RegExp(r'(z)zes$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // algae, alumnae, antennae, larvae
  {
    'regexp': RegExp(r'(alg|lumn|tenn|arv|ebul|pup|rteb|vit)ae$'),
    'replacement': (Match m) {
      return '${m[1]}a';
    }
  },
  // bacteria, curricula, data, errata,
  {
    'regexp': RegExp(r'(cteri|at|ul|at|asi|di|nd|ov|ri)a$'),
    'replacement': (Match m) {
      return '${m[1]}um';
    }
  },
  // matrices indices
  {
    'regexp': RegExp(r'(vert|ind)ices$'),
    'replacement': (Match m) {
      return '${m[1]}ex';
    }
  },
  // analyses synopses prognoses
  {
    'regexp': RegExp(
        r'(()(a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he|(p)ha)ses'),
    'replacement': (Match m) {
      return '${m[1]}${m[2]}sis';
    }
  },
  // archive hives chives
  {
    'regexp': RegExp(r'(hive)s$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // adjectives creatives causatives
  {
    'regexp': RegExp(r'(tive)s$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // curves
  {
    'regexp': RegExp(r'(curve)s$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // attorneys
  {
    'regexp': RegExp(r'([aeiou]y)s$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // louse mouse booklouse
  {
    'regexp': RegExp(r'([m|l])ice$'),
    'replacement': (Match m) {
      return '${m[1]}ouse';
    }
  },
  // man
  {
    'regexp': RegExp(r'(m)en$'),
    'replacement': (Match m) {
      return '${m[1]}an';
    }
  },
  // series
  {
    'regexp': RegExp(r'(s)eries$'),
    'replacement': (Match m) {
      return '${m[1]}eries';
    }
  },
  // movies
  {
    'regexp': RegExp(r'(m)ovies$'),
    'replacement': (Match m) {
      return '${m[1]}ovie';
    }
  },
  // buses
  {
    'regexp': RegExp(r'(bus)es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // shoes
  {
    'regexp': RegExp(r'(shoe)s$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  //
  {
    'regexp': RegExp(r'(o)es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // crisis
  {
    'regexp': RegExp(r'^(cris|ax|test)es$'),
    'replacement': (Match m) {
      return '${m[1]}is';
    }
  },
  // octopi
  {
    'regexp': RegExp(r'(octop|vir)i$'),
    'replacement': (Match m) {
      return '${m[1]}us';
    }
  },
  // aliases
  {
    'regexp': RegExp(r'(alias|status)es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // oxen
  {
    'regexp': RegExp(r'^(ox)en$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // matrices
  {
    'regexp': RegExp(r'(matr)ices$'),
    'replacement': (Match m) {
      return '${m[1]}ix';
    }
  },
  // feet
  {
    'regexp': RegExp(r'([a-z]{1})ee([a-z]{1,2})$'),
    'replacement': (Match m) {
      return '${m[1]}oo${m[2]}';
    }
  },
  // fungi
  {
    'regexp': RegExp(r'([^aeiouy][aeiouy][^aeiouy]{1,2}e*)i|i$'),
    'replacement': (Match m) {
      return '${m[1]}us';
    }
  },
  // plateaux
  {
    'regexp': RegExp(r'([^aeiouy])eaux$/g'),
    'replacement': (Match m) {
      return '${m[1]}eau';
    }
  },
  //
  {
    'regexp': RegExp(r'([aeiouy]us)es$'),
    'replacement': (Match m) {
      return '${m[1]}e';
    }
  },
  //
  {
    'regexp': RegExp(r'([^l][oa]s)es$'),
    'replacement': (Match m) {
      return '${m[1]}is';
    }
  },
  // loaves
  {
    'regexp': RegExp(r'([aeiouy]{2})ves$'),
    'replacement': (Match m) {
      return '${m[1]}f';
    }
  },
  // lives
  {
    'regexp': RegExp(r'([aeiouy])ves$'),
    'replacement': (Match m) {
      return '${m[1]}fe';
    }
  },
  //
  {
    'regexp': RegExp(r'(h\w{2})ves$'),
    'replacement': (Match m) {
      return '${m[1]}f';
    }
  },
  // wharves
  {
    'regexp': RegExp(r'(el|car|cal|war)ves$'),
    'replacement': (Match m) {
      return '${m[1]}f';
    }
  },
  //
  {
    'regexp': RegExp(r'([xsz])es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  // itches twitches arches
  {
    'regexp': RegExp(r'(x|ch|sh|ss)es$'),
    'replacement': (Match m) {
      return '${m[1]}';
    }
  },
  {
    'regexp': RegExp(r's$'),
    'replacement': (Match m) {
      return '';
    }
  }
];
