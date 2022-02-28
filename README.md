# Grammer
A library to process noun (plural to singular and singular to plural), verb (gerund, present & past) and adjective (comparative, superlative) transformations.
  
  <a href="https://flutter.io">  
    <img src="https://img.shields.io/badge/Platform-Flutter-yellow.svg"  
      alt="Platform" />  
  </a> 
  <a href="https://github.com/justkawal/grammer">  
    <img src="https://github.com/justkawal/grammer/workflows/Test/badge.svg"  
      alt="Test" />  
  </a> 
   <a href="https://pub.dev/packages/grammer">  
    <img src="https://img.shields.io/pub/v/grammer.svg"  
      alt="Pub Package" />  
  </a>
   <a href="https://opensource.org/licenses/MIT">  
    <img src="https://img.shields.io/badge/License-MIT-red.svg"  
      alt="License: MIT" />  
  </a>
   <a href="https://github.com/justkawal/grammer/issues">  
    <img src="https://img.shields.io/github/issues/justkawal/grammer"  
      alt="Issue" />  
  </a> 
   <a href="https://github.com/justkawal/grammer/network">  
    <img src="https://img.shields.io/github/forks/justkawal/grammer"  
      alt="Forks" />  
  </a> 
   <a href="https://github.com/justkawal/grammer/stargazers">  
    <img src="https://img.shields.io/github/stars/justkawal/grammer"  
      alt="Stars" />  
  </a>
  <br>
  <br>

#### This library is [MIT](https://github.com/justkawal/grammer/blob/main/LICENSE) licensed. So, it's free to use anytime, anywhere without any consent, because Open Source is love ❤️.

# Lets Get Started

### 1. Add dependency
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  grammer: ^1.0.1
```

### 2. Import it

Now in your `Dart` code, you can use: 

```dart
    import 'package:grammer/grammer.dart';
```

## Usage

## Adjective
```dart
var instance = Grammer('big');
instance.comparative(); // bigger
instance.superlative(); // biggest
``` 

## Verb
```dart
 Grammer('rallied').conjugate('VBP'); // rally
 Grammer('fly').conjugate('VBD'); // flew
 Grammer('throw').conjugate('VBN'); // thrown
 Grammer('rally').conjugate('VBS'); // rallies
 Grammer('die').conjugate('VBP'); // dying

// or you can use the aliases
 Grammer('rallied').toPresent(); // rally
 Grammer('fly').toPast(); // flew
 Grammer('throw').toPastParticiple(); // thrown
 Grammer('rally').toPresentS(); // rallies
 Grammer('die').toGerund(); // dying
``` 

## Noun
```dart
final grammerA = Grammer('bus');
final grammerB = Grammer('ellipses');
final grammerC = Grammer('money');

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

```

## How does it work

### Adjective
	1. Checks against a dictionary of known irregularities (e.g. little/less/least)
	2. Applies changes based on:
		* Number of syllables
		* word ending

### Noun
	1. Dictionary lookup (known irregularities e.g. octopus/octopi & uncountable words)
	2. Identifies whether the word is plural or singular based on:
		* Dictionary
		* Machine learned regular expressions 
	3. Applies transformation based on ending and word pattern (vowels, consonants and word endings)

### Verb
	1. Dictionary lookup (known irregularities + 4000 common verbs)
	2. If the passed verb is identified as infinitive, it then applies regular expression transformations that are based on word endings, vowels and consonant phonetics.
	3. Tries to trim character from the beginning of the verb, thus solving prefixes (e.g. undergoes, overthrown)
	4. Tries to stem the word and get the infinitive form, then apply regular expression transformations.
	5. Applies regular expressions.


## How accurate is it?

First of all, unless you have a dictionary of all the words and verbs that exist in English, you can't really write a regular expression or an algorithm and expect to have a 100% success rate. English has been adopting words from a lot of different languages (French, Greek and Latin for example), and each one of these languages has its own rules of pluralization and singularization, let alone verb conjugation.

Even with dictionaries you'll have the problem of complex and made up words like `maskedlocation`, and you might have to add dictionaries for specialties (like medicine which does actually have its own dictionary). 

However, I think what you'll find in this library is what can be achieved with the least amount of compromise.

I've used a set of rules (for detection/transformation) in combination with an exceptions list.

However, testing the library was more challenging than anticipated. If you have any case inaccuracy or false positives **please** submit an issue.

And of course, You can clone this repository, install `mocha` and test it for yourself, and you'll see how it passes the **9900** tests successfully.


## License

License: The MIT License (MIT) - Copyright (c) 2022 Kawaljeet Singh

## Inspiration
(A migration of en-inflectors in Type-script.)
