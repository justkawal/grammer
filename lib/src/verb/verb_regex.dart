part of grammer;

abstract class _VerbRules {
  RegExp get test;
  String transform(String vb, String to);
}

class _VerbRule1 extends _VerbRules {
  @override
  RegExp get test => RegExp(
      r'([uao]m[pb]|[oa]wn|ey|elp|[ei]gn|ilm|o[uo]r|[oa]ugh|igh|ki|ff|oubt|ount|awl|o[alo]d|[iu]rl|upt|[oa]y|ight|oid|empt|act|aud|e[ea]d|ound|[aeiou][srcln]t|ept|dd|[eia]n[dk]|[ioa][xk]|[oa]rm|[ue]rn|[ao]ng|uin|eam|ai[mr]|[oea]w|[eaoui][rscl]k|[oa]r[nd]|ear|er|[^aieouyfm]it|[aeiouy]ir|[^aieouyfm]et|ll|en|vil|om|[^rno].mit|rup|bat|val|.[^skxwb][rvmchslwngb]el)$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${vb}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}ed';
    }
    return vb;
  }
}

class _VerbRule2 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'[^aeiou]y$');

  @override
  String transform(String vb, String to) {
    var base = vb.substring(0, vb.length - 1);
    if (to == 'VBZ') return '${base}ies';
    if (to == 'VBG') {
      return '${vb}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${base}ied';
    }
    return vb;
  }
}

class _VerbRule3 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'[^aeiouy]e$');

  @override
  String transform(String vb, String to) {
    var base = vb.substring(0, vb.length - 1);
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${base}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${base}ed';
    }
    return vb;
  }
}

class _VerbRule4 extends _VerbRules {
  @override
  RegExp get test => RegExp(
      r'([^dtaeiuo][aeiuo][ptlgnm]|ir|cur|ug|[hj]ar|[^aouiey]ep|[^aeiuo][oua][db])$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '$vb${vb[vb.length - 1]}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '$vb${vb[vb.length - 1]}ed';
    }
    return vb;
  }
}

class _VerbRule5 extends _VerbRules {
  @override
  RegExp get test => RegExp(
      r'([ieao]ss|[aeiouy]zz|[aeiouy]ch|nch|rch|[aeiouy]sh|[iae]tch|ax)$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}es';
    }
    if (to == 'VBG') {
      return '${vb}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}ed';
    }
    return vb;
  }
}

class _VerbRule6 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'(ee)$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${vb}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}d';
    }
    return vb;
  }
}

class _VerbRule7 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'(ie)$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${vb.substring(0, vb.length - 2)}ying';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}d';
    }
    return vb;
  }
}

class _VerbRule8 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'(ue)$');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${vb.substring(0, vb.length - 1)}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}d';
    }
    return vb;
  }
}

class _VerbRule9 extends _VerbRules {
  @override
  RegExp get test => RegExp(r'.');

  @override
  String transform(String vb, String to) {
    if (to == 'VBZ') {
      return '${vb}s';
    }
    if (to == 'VBG') {
      return '${vb}ing';
    }
    if (to == 'VBN' || to == 'VBD') {
      return '${vb}ed';
    }
    return vb;
  }
}

final _verbRules = <_VerbRules>[
  _VerbRule1(),
  _VerbRule2(),
  _VerbRule3(),
  _VerbRule4(),
  _VerbRule5(),
  _VerbRule6(),
  _VerbRule7(),
  _VerbRule8(),
  _VerbRule9(),
];

String solveVerbRegex(String input, String to) {
  for (var rule in _verbRules) {
    if (rule.test.hasMatch(input)) {
      return rule.transform(input, to);
    }
  }
  return '';
}
