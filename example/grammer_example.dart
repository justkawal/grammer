import 'package:grammer/grammer.dart';
// ignore_for_file: avoid_print

void main() {
  var instance = Grammer('big');
  instance.comparative(); // bigger
  instance.superlative(); // biggest

  Grammer('rallied').conjugate('VBP'); // rally
  Grammer('fly').conjugate('VBD'); // flew
  Grammer('throw').conjugate('VBN'); // thrown
  Grammer('rally').conjugate('VBZ'); // rallies
  Grammer('die').conjugate('VBG'); // dying

  // or you can use the aliases
  Grammer('rallied').toPresent(); // rally
  Grammer('fly').toPast(); // flew
  Grammer('throw').toPastParticiple(); // thrown
  Grammer('rally').toPresentS(); // rallies
  Grammer('die').toGerund(); // dying

  Grammer grammerA = Grammer('bus');
  Grammer grammerB = Grammer('ellipses');
  Grammer grammerC = Grammer('money');

  grammerA.isCountable(); // true
  grammerB.isCountable(); // true
  grammerC.isCountable(); // false

  grammerA.isNotCountable(); // false
  grammerB.isNotCountable(); // false
  grammerC.isNotCountable(); // true

  grammerA.isSingular(); // true
  grammerB.isSingular(); // false
  grammerC.isSingular(); // true

  grammerA.isPlural(); // false
  grammerB.isPlural(); // true
  grammerC.isPlural(); // true

// note that uncountable words return true
// on both plural and singular checks

  grammerA.toSingular(); // bus (no change)
  grammerB.toSingular(); // ellipsis
  grammerC.toSingular(); // money (no change)

  grammerA.toPlural(); // buses
  grammerB.toPlural(); // ellipses (no change)
  grammerC.toPlural(); // money (no change)
}
