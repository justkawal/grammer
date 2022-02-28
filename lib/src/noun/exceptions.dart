part of grammer;
// ignore_for_file: unused_element

class _Exceptions {
  final singular2plural = <String, List<String>>{
    "abacus": ["abacuses"],
    "abyss": ["abysses"],
    "addendum": ["addenda"],
    "agenda": ["agendas"],
    "agendum": ["agenda"],
    "agent-provocateur": ["agents-provocateurs"],
    "aide-de-camp": ["aides-de-camp"],
    "aircraft": ["aircraft"],
    "albino": ["albinos"],
    "album": ["albums"],
    "alfalfa": ["alfalfas"],
    "alga": ["algae"],
    "alumna": ["alumnae"],
    "alumnus": ["alumni"],
    "amoeba": ["amoebae"],
    "analysis": ["analyses"],
    "anathema": ["anathemata"],
    "annex": ["annexes"],
    "antenna": ["antennas"],
    "antithesis": ["antitheses"],
    "apex": ["apices", "apexes"],
    "apparatus": ["apparatuses"],
    "appendix": ["appendices", "appendixes"],
    "apple": ["apples"],
    "aquarium": ["aquaria", "aquariums"],
    "arch": ["arches"],
    "armadillo": ["armadillos"],
    "ass": ["asses"],
    "atlas": ["atlases"],
    "attorne-general": ["attorneys-general"],
    "aurora": ["auroras"],
    "auto": ["autos"],
    "axe": ["axes"],
    "axis": ["axes"],
    "baby": ["babies"],
    "bacillus": ["bacilli"],
    "bacterium": ["bacteria"],
    "balloon": ["balloons"],
    "banana": ["bananas"],
    "barracks": ["barracks"],
    "barracuda": ["barracudas"],
    "basis": ["bases"],
    "batch": ["batches"],
    "beach": ["beaches"],
    "beau": ["beaux"],
    "beau-geste": ["beaux-gestes"],
    "bel-homme": ["beaux-hommes"],
    "belief": ["beliefs"],
    "belle-epoque": ["belles-epoques", "belle-epoques"],
    "bikini": ["bikinis"],
    "bildungsroman": ["bildungsromane"],
    "bill-of-attainder": ["bills-of-attainder"],
    "biscotto": ["biscotti"],
    "bon-mot": ["bons-mots"],
    "bon-vivant": ["bons-vivants"],
    "book": ["books"],
    "box": ["boxes"],
    "brother": ["brothers"],
    "brush": ["brushes"],
    "buffalo": ["buffalos", "buffaloes"],
    "bureau": ["bureaus", "bureaux"],
    "bus": ["buses", "busses"],
    "cactus": ["cacti"],
    "calf": ["calves"],
    "cameo": ["cameos"],
    "candelabrum": ["candelabra"],
    "canto": ["cantos"],
    "carton": ["cartons"],
    "cat-o'-nine-tails": ["cat-o'-nine-tails"],
    "cello": ["cellos"],
    "chateau": ["chateaux", "chateaus"],
    "cherry": ["cherries"],
    "chick": ["chicks"],
    "chicken": ["chickens"],
    "chief": ["chiefs"],
    "child": ["children"],
    "church": ["churches"],
    "château": ["châteaux", "châteaus"],
    "circus": ["circuses"],
    "city": ["cities"],
    "cod": ["cods"],
    "codex": ["codices"],
    "combo": ["combos"],
    "complex": ["complexes"],
    "concerto": ["concerti", "concertos"],
    "copy": ["copies"],
    "cornea": ["corneas"],
    "corps": ["corps"],
    "corpus": ["corpora", "corpuses"],
    "coup d'etat": ["coups d'etat"],
    "court-martial": ["courts-martial"],
    "cri du coeur": ["cris du coeur"],
    "crisis": ["crises"],
    "criterion": ["criteria"],
    "crocus": ["crocuses"],
    "curriculum": ["curricula"],
    "daisy": ["daisies"],
    "datum": ["data"],
    "des": ["deses"],
    "diagnosis": ["diagnoses"],
    "dictionary": ["dictionaries"],
    "die": ["dice"],
    "director-general": ["directors-general"],
    "dogma": ["dogmata"],
    "domino": ["dominoes"],
    "dukhobor": ["dukhobortsy"],
    "duo": ["duos"],
    "duplex": ["duplexes"],
    "dwarf": ["dwarves", "dwarfs"],
    "echo": ["echoes"],
    "ego": ["egos"],
    "elf": ["elves"],
    "ellipsis": ["ellipses"],
    "embargo": ["embargoes"],
    "emphasis": ["emphases"],
    "entente-cordiale": ["ententes-cordiales"],
    "erratum": ["errata"],
    "fait-accompli": ["faits-accomplis"],
    "family": ["families"],
    "faux-pas": ["faux-pas"],
    "fax": ["faxes"],
    "fee simple absolute": ["fees simple absolute"],
    "fez": ["fezzes", "fezes"],
    "fireman": ["firemen"],
    "fish": ["fishes"],
    "flush": ["flushes"],
    "fly": ["flies"],
    "focus": ["foci", "focuses"],
    "folio": ["folios"],
    "foot": ["feet"],
    "formula": ["formulas", "formulae"],
    "fungus": ["fungi", "funguses"],
    "gallows": ["gallows"],
    "gas": ["gases"],
    "gens": ["gentes"],
    "genu": ["genua"],
    "genus": ["genera"],
    "goose": ["geese"],
    "governor-general": ["governors-general"],
    "graffito": ["graffiti"],
    "grief": ["griefs"],
    "grouse": ["grouses"],
    "gulf": ["gulfs"],
    "guru": ["gurus"],
    "half": ["halves"],
    "hallux": ["halluces"],
    "halo": ["halos"],
    "ham on rye": ["ham-on-ryes"],
    "handkerchief": ["handkerchiefs"],
    "head of state": ["heads of states", "heads of state"],
    "hero": ["heroes"],
    "hetero": ["heteros"],
    "hex": ["hexes"],
    "hippopotamus": ["hippopotami", "hippopotamuses"],
    "hoax": ["hoaxes"],
    "holluschik": ["holluschikie"],
    "hoof": ["hooves"],
    "hypothesis": ["hypotheses"],
    "idee-fixe": ["idees-fixes"],
    "index": ["indexes", "indices", "indeces"],
    "inferno": ["infernos"],
    "insigne": ["insignia"],
    "iris": ["irises"],
    "iter": ["itinera"],
    "jack-in-the-box": ["jacks-in-the-box", "jack-in-the-boxes"],
    "jack-in-the-pulpit": ["jacks-in-the-pulpit", "jack-in-the-pulpits"],
    "jack-o'-lantern": ["jack-o'-lanterns"],
    "kerchief": ["kerchiefs"],
    "kimono": ["kimonos"],
    "kiss": ["kisses"],
    "knife": ["knives"],
    "krone": ["kroner"],
    "lady": ["ladies"],
    "larva": ["larvae"],
    "lasso": ["lassos"],
    "leaf": ["leaves"],
    "lemma": ["lemmata", "lemmas"],
    "libretto": ["libretti", "librettos"],
    "life": ["lives"],
    "loaf": ["loaves"],
    "locus": ["loci"],
    "louse": ["lice"],
    "man": ["men"],
    "man-about-town": ["men-about-town"],
    "man-child": ["men-children"],
    "man-of-war": ["men-of-war"],
    "mango": ["mangoes"],
    "manservant": ["menservants"],
    "martini": ["martinis"],
    "matrix": ["matrices", "matrixes"],
    "matzo": ["matzoth"],
    "medium": ["media"],
    "memento": ["mementos"],
    "memo": ["memos"],
    "memorandum": ["memoranda"],
    "menu": ["menus"],
    "mess": ["messes"],
    "millennium": ["millenniums", "millennium", "millennia"],
    "minister-president": ["ministers-president"],
    "minutia": ["minutiae"],
    "mischief": ["mischiefs"],
    "moose": ["moose"],
    "mosquito": ["mosquitoes"],
    "motto": ["mottoes"],
    "mouse": ["mice"],
    "muff": ["muffs"],
    "mussolini": ["mussolinis"],
    "nanny": ["nannies"],
    "nebula": ["nebulae", "nebulas"],
    "neurosis": ["neuroses"],
    "never-was": ["never-weres"],
    "nova": ["novas"],
    "nucleus": ["nuclei"],
    "oaf": ["oafs"],
    "oasis": ["oases"],
    "octopus": ["octopuses", "octopodes", "octopi"],
    "opus": ["opera", "operas"],
    "ornis": ["ornithes"],
    "ovum": ["ova"],
    "ox": ["oxen"],
    "page": ["pages"],
    "pakistani": ["pakistanis"],
    "panino": ["panini"],
    "paparazzo": ["paparazzi"],
    "paralysis": ["paralyses"],
    "parenthesis": ["parentheses"],
    "party": ["parties"],
    "pass": ["passes"],
    "passerby": ["passersby"],
    "penny": ["pennies"],
    "person": ["people"],
    "phenomenon": ["phenomena"],
    "phobia": ["phobias"],
    "photo": ["photos"],
    "phylum": ["phyla"],
    "piano": ["pianos"],
    "pitch": ["pitches"],
    "plateau": ["plateaux", "plateaus"],
    "poppy": ["poppies"],
    "portfolio": ["portfolios"],
    "portico": ["porticos"],
    "potato": ["potatoes"],
    "pro": ["pros"],
    "procurator-fiscal": ["procurators-fiscal"],
    "prognosis": ["prognoses"],
    "proof": ["proofs"],
    "pupa": ["pupae"],
    "quadrans": ["quadrantes"],
    "quarto": ["quartos"],
    "quiz": ["quizzes"],
    "radius": ["radii"],
    "referendum": ["referenda", "referendums"],
    "reflex": ["reflexes"],
    "rhombus": ["rhombuses"],
    "roof": ["roofs"],
    "rubai": ["rubaiyat"],
    "runner-up": ["runners-up"],
    "safe": ["safes"],
    "salmon": ["salmons"],
    "scarf": ["scarves", "scarfs"],
    "schema": ["schemata", "schemas"],
    "schoolchild": ["schoolchildren"],
    "scratch": ["scratches"],
    "scrotum": ["scrota", "scrotums"],
    "self": ["selves"],
    "seraph": ["seraphim"],
    "sheaf": ["sheaves"],
    "shelf": ["shelves"],
    "ship of the line": ["ships of the line"],
    "shrimp": ["shrimps"],
    "shtetl": ["shtetlach"],
    "silo": ["silos"],
    "snafu": ["snafus"],
    "solo": ["solos"],
    "son of a bitch": ["sons of bitches", "sons-of-a-bitch"],
    "son-in-law": ["sons-in-law"],
    "spaghetto": ["spaghettis", "spaghetti"],
    "splash": ["splashes"],
    "spy": ["spies"],
    "stadium": ["stadiums"],
    "stereo": ["stereos"],
    "stigma": ["stigmata", "stigmas"],
    "stimulus": ["stimuli"],
    "stitch": ["stitches"],
    "stoma": ["stomata", "stomas"],
    "story": ["stories"],
    "stratum": ["strata"],
    "studio": ["studios"],
    "syllabus": ["syllabi", "syllabuses"],
    "symposium": ["symposia", "symposiums"],
    "synopsis": ["synopses"],
    "synthesis": ["syntheses"],
    "tableau": ["tableaux", "tableaus"],
    "taco": ["tacos"],
    "tattoo": ["tattoos"],
    "tax": ["taxes"],
    "tete-a-tete": ["tete-a-tetes"],
    "that": ["those"],
    "thesis": ["theses"],
    "thief": ["thieves"],
    "this": ["these"],
    "tomato": ["tomatoes"],
    "tooth": ["teeth"],
    "tornado": ["tornadoes"],
    "torpedo": ["torpedoes"],
    "torte": ["torten"],
    "tour-de-force": ["tours-de-force"],
    "trout": ["trouts"],
    "try": ["tries"],
    "tuna": ["tunas"],
    "turf": ["turfs"],
    "tuxedo": ["tuxedos"],
    "typo": ["typos"],
    "ushabti": ["ushabtiu"],
    "vas": ["vasa"],
    "vertebra": ["vertebrae"],
    "vertex": ["vertices", "vertexes"],
    "veto": ["vetoes"],
    "video": ["videos"],
    "vita": ["vitae"],
    "volcano": ["volcanoes"],
    "vortex": ["vortices", "vortexes"],
    "walrus": ["walruses"],
    "waltz": ["waltzes"],
    "wash": ["washes"],
    "watch": ["watches"],
    "wharf": ["wharves"],
    "wife": ["wives"],
    "will-o'-the-wisp": ["will-o'-the-wisps"],
    "wish": ["wishes"],
    "wolf": ["wolves"],
    "woman": ["women"],
    "woman-doctor": ["women-doctors"],
    "word": ["words"],
    "workman": ["workmen"],
    "wunderkind": ["wunderkinder"],
    "yemeni": ["yemenis"],
    "yeshiva": ["yeshivoth"],
    "yo": ["yos"],
    "zecchino": ["zecchini"],
    "zero": ["zeros", "zeroes"],
    "zoo": ["zoos"],
  };

  final plural2singular = <String, List<String>>{};
  static _Exceptions? _instance;

  _Exceptions._() {
    singular2plural.forEach((key, list) {
      for (var value in list) {
        if (plural2singular[value] == null) {
          plural2singular[value] = <String>[key];
        }
      }
    });
  }

  static _Exceptions get instance {
    _instance ??= _Exceptions._();
    return _instance!;
  }
}
