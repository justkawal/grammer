library grammer;

// external library import
import 'package:stemmer/stemmer.dart';

// src
part 'src/grammer_base.dart';

// extensions
part 'src/extensions/extensions.dart';

// Adjectives
part 'src/adjective/irregulars.dart';
part 'src/adjective/adjective_rules.dart';
part 'src/adjective/process.dart';

// Noun
part 'src/noun/detect_singular_plural.dart';
part 'src/noun/exceptions.dart';
part 'src/noun/regexp_transformation.dart';
part 'src/noun/regexps_detection.dart';
part 'src/noun/uncountable.dart';
part 'src/noun/transform.dart';
part 'src/noun/detect_countable.dart';

// Verb
part 'src/verb/verb_lookup.dart';
part 'src/verb/verb_regex.dart';
part 'src/verb/transform.dart';
part 'src/verb/verb_present.dart';
part 'src/verb/verb_similar.dart';
