import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every required ARB has the complete nonempty key set', () {
    const locales = [
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    final directory = Directory('lib/l10n');
    final english = _messages(File('${directory.path}/app_en.arb'));

    for (final locale in locales) {
      final messages = _messages(File('${directory.path}/app_$locale.arb'));
      expect(messages.keys.toSet(), english.keys.toSet(), reason: locale);
      expect(
        messages.values.every((value) => value.trim().isNotEmpty),
        isTrue,
        reason: locale,
      );
      if (locale != 'en') {
        expect(
          messages['appTitle'],
          isNot(english['appTitle']),
          reason: locale,
        );
        expect(
          messages['appDescription'],
          isNot(english['appDescription']),
          reason: locale,
        );
      }
    }
  });
}

Map<String, String> _messages(File file) {
  final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
  return {
    for (final entry in json.entries)
      if (!entry.key.startsWith('@')) entry.key: entry.value as String,
  };
}
