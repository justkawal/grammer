import 'package:grammer/grammer.dart';
import 'package:test/test.dart';
import 'adjectives_list.dart';

void main() {
  group('Adjective tests', () {
    for (var words in adjectiveTestList) {
      final result = Grammer(words[0]).comparative();
      test('$result == ${words[1]}', () {
        expect(result, equals(words[1]));
      });

      final result2 = Grammer(words[0]).superlative();
      test('$result2 == ${words[2]}', () {
        expect(result2, equals(words[2]));
      });
    }
  });
}
