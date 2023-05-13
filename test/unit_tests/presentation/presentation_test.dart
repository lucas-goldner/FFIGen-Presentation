import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercon_2023_presentation/presentation/model/presentation.dart';

void main() {
  group('Test presentation model', () {
    test('test presentation copyWith page', () {
      const pre = Presentation(0, Locale('en'));

      expect(1, pre.copyWith(page: 1).page);
    });

    test('test presentation copyWith locale', () {
      const pre = Presentation(0, Locale('en'));

      expect(
        const Locale('de').languageCode,
        pre.copyWith(locale: const Locale('de')).locale.languageCode,
      );
    });

    test('test presentation copyWith entire presentation', () {
      const pre = Presentation(0, Locale('en'));
      final newPre = pre.copyWith(page: 1, locale: const Locale('de'));

      expect(
        const Locale('de').languageCode,
        newPre.locale.languageCode,
      );
      expect(1, newPre.page);
    });
  });
}
