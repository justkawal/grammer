import 'package:grammer/grammer.dart';
import 'package:test/test.dart';

import 'plurals.dart';
import 'singulars.dart';
import 'singulars_plurals.dart';

void main() {
  group('Common Singulars', () {
    for (var word in singularsTestList) {
      final grammer = Grammer(word);
      test('Is not Plural', () {
        expect(grammer.isPlural(), false);
      });
      test('Is Singular', () {
        expect(grammer.isSingular(), true);
      });
    }
  });
  group('Common Plurals', () {
    for (var word in pluralTestList) {
      final grammer = Grammer(word);
      test('Is Plural', () {
        expect(grammer.isPlural(), true);
      });
      test('Is not Singular', () {
        expect(grammer.isSingular(), false);
      });
    }
  });

  group('Comparative list of singulars and plurals', () {
    group('Singular and Plural checking', () {
      for (var words in singularPluralTestList) {
        test('Singular: ${words[0]}', () {
          expect(Grammer(words[0]).isSingular(), true);
        });
        test('Not Singular: ${words[1]}', () {
          expect(Grammer(words[1]).isSingular(), false);
        });
        test('Plural: ${words[1]}', () {
          expect(Grammer(words[1]).isPlural(), true);
        });
        test('Not Plural: ${words[0]}', () {
          expect(Grammer(words[0]).isPlural(), false);
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
