import 'package:grammer/grammer.dart';
import 'package:test/test.dart';

import 'plurals.dart';
import 'singulars.dart';
import 'singulars_plurals.dart';

void main() {
  group('Common Singulars with extensions', () {
    for (var word in singularsTestList) {
      test('Is not Plural', () {
        expect(word.isPlural(), false);
      });
      test('Is Singular', () {
        expect(word.isSingular(), true);
      });
    }
  });
  group('Common Plurals with extensions', () {
    for (var word in pluralTestList) {
      test('Is Plural', () {
        expect(word.isPlural(), true);
      });
      test('Is not Singular', () {
        expect(word.isSingular(), false);
      });
    }
  });

  group('Comparative list of singulars and plurals with extensions', () {
    group('Singular and Plural checking with extensions', () {
      for (var words in singularPluralTestList) {
        test('Singular: ${words[0]}', () {
          expect(words[0].isSingular(), true);
        });
        test('Not Singular: ${words[1]}', () {
          expect(words[1].isSingular(), false);
        });
        test('Plural: ${words[1]}', () {
          expect(words[1].isPlural(), true);
        });
        test('Not Plural: ${words[0]}', () {
          expect(words[0].isPlural(), false);
        });
      }
    });

    group('transformations with extensions', () {
      group('plural to singular with extensions', () {
        for (var words in singularPluralTestList) {
          final singular = words[1].toSingular();
          test('$singular == ${words[0]}', () {
            expect(singular, equals(words[0]));
          });
        }
      });
      group('singular to plural with extensions', () {
        for (var words in singularPluralTestList) {
          final plural = words[0].toPlural();
          test('$plural ==> ${words[1]}', () {
            expect(plural.contains(words[1]), true);
          });
        }
      });
    });
  });
}
