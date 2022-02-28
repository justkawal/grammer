import 'package:grammer/grammer.dart';
import 'package:test/test.dart';

import 'plurals.dart';
import 'singulars.dart';
import 'singulars_plurals.dart';

void main() {
  group('Common Singulars', () {
    for (var word in singularsTestList) {
      test('Not Plural', () {
        expect(Grammer(word).isPlural, false);
      });
      test('Is Singular', () {
        expect(Grammer(word).isSingular, true);
      });
    }
  });
  group('Common Plurals', () {
    for (var word in pluralTestList) {
      test('Is Plural', () {
        expect(Grammer(word).isPlural, true);
      });
      test('Not Singular', () {
        expect(Grammer(word).isSingular, false);
      });
    }
  });

  group('Comparative list of singulars and plurals', () {
    group('Singular and Plural checking', () {
      for (var words in singularPluralTestList) {
        test('isSingular: ${words[0]}', () {
          expect(Grammer(words[0]).isSingular, true);
        });
        test('isSingular: ${words[1]}', () {
          expect(Grammer(words[1]).isSingular, false);
        });
        test('isPlural: ${words[1]}', () {
          expect(Grammer(words[1]).isPlural, true);
        });
        test('isPlural: ${words[0]}', () {
          expect(Grammer(words[0]).isPlural, false);
        });
      }
    });

    group('transformations', () {
      group('plural to singular', () {
        for (var words in singularPluralTestList) {
          final singular = Grammer(words[1]).toSingular();
          test('$singular == ${words[0]}', () {
            expect(singular, equals(words[0]));
          });
        }
      });
      group('singular to plural', () {
        for (var words in singularPluralTestList) {
          final plural = Grammer(words[0]).toPlural();
          test('$plural ==> ${words[1]}', () {
            expect(plural.contains(words[1]), true);
          });
        }
      });
    });
  });
}
