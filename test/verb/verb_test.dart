import 'package:grammer/grammer.dart';
import 'package:test/test.dart';

import 'verb_list.dart';

void main() {
  group('Verb Tests', () {
    for (var map in verbTestlist.entries) {
      final entry = map.key;
      final expected = map.value;

      final result = [
        Grammer(entry).conjugate("VBP"),
        Grammer(entry).conjugate("VBD"),
        Grammer(entry).conjugate("VBN"),
        Grammer(entry).conjugate("VBZ"),
        Grammer(entry).conjugate("VBG"),
      ];
      test('[0]VBP: ${expected[0]} == ${result[0]}', () {
        expect(result[0], expected[0]);
      });
      test('[1]VBD: ${expected[1]} == ${result[1]}', () {
        expect(result[1], expected[1]);
      });
      test('[2]VBN: ${expected[2]} == ${result[2]}', () {
        expect(result[2], expected[2]);
      });
      test('[3]VBZ: ${expected[3]} == ${result[3]}', () {
        expect(result[3], expected[3]);
      });
      test('[4]VBG: ${expected[4]} == ${result[4]}', () {
        expect(result[4], expected[4]);
      });
    }
  });
}
