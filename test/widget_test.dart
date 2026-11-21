import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:pack_mix_planner/app.dart';
import 'package:pack_mix_planner/app_config.dart' as config;

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> openApp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();
  }

  Future<void> calculate(
    WidgetTester tester, {
    required String target,
    required String sizes,
  }) async {
    final targetInput = find.byKey(const ValueKey('target-input'));
    await tester.ensureVisible(targetInput);
    await tester.enterText(targetInput, target);
    final sizesInput = find.byKey(const ValueKey('pack-sizes-input'));
    await tester.ensureVisible(sizesInput);
    await tester.enterText(sizesInput, sizes);
    final button = find.byKey(const ValueKey('find-mix'));
    await tester.ensureVisible(button);
    await tester.pumpAndSettle();
    await tester.tap(button);
    await tester.pumpAndSettle();
  }

  testWidgets('shows the English-first purpose and primary inputs', (
    tester,
  ) async {
    await openApp(tester);

    expect(find.text(config.appTitle), findsOneWidget);
    expect(find.text(config.appDescription), findsOneWidget);
    expect(find.text('Target quantity'), findsOneWidget);
    expect(find.text('Pack sizes'), findsOneWidget);
    expect(find.text('Find mix'), findsOneWidget);
    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('en'),
    );
  });

  testWidgets('finds the exact deterministic mix for 26', (tester) async {
    await openApp(tester);
    await calculate(tester, target: '26', sizes: '6, 10');

    expect(find.text('1 × 6 = 6'), findsOneWidget);
    expect(find.text('2 × 10 = 20'), findsOneWidget);
    expect(find.text('Total units: 26'), findsOneWidget);
    expect(find.text('Surplus: 0'), findsOneWidget);
    expect(find.text('Total packs: 3'), findsOneWidget);
    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('pack-sizes-input')))
          .controller!
          .text,
      '10, 6',
    );
  });

  testWidgets('minimizes surplus before pack count', (tester) async {
    await openApp(tester);
    await calculate(tester, target: '23', sizes: '6, 10');

    expect(find.text('4 × 6 = 24'), findsOneWidget);
    expect(find.text('Total units: 24'), findsOneWidget);
    expect(find.text('Surplus: 1'), findsOneWidget);
    expect(find.text('Total packs: 4'), findsOneWidget);
  });

  testWidgets('uses the fewest packs and ignores pack-size input order', (
    tester,
  ) async {
    await openApp(tester);
    await calculate(tester, target: '20', sizes: '4, 6, 10');

    expect(find.text('2 × 10 = 20'), findsOneWidget);
    expect(find.text('Total packs: 2'), findsOneWidget);

    await calculate(tester, target: '20', sizes: '10, 4, 6');
    expect(find.text('2 × 10 = 20'), findsOneWidget);
    expect(find.text('Total packs: 2'), findsOneWidget);
    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('pack-sizes-input')))
          .controller!
          .text,
      '10, 6, 4',
    );
  });

  testWidgets('breaks remaining ties in favor of larger pack sizes', (
    tester,
  ) async {
    await openApp(tester);
    await calculate(tester, target: '10', sizes: '4, 5, 6');

    expect(find.text('1 × 4 = 4'), findsOneWidget);
    expect(find.text('1 × 6 = 6'), findsOneWidget);
    expect(find.text('2 × 5 = 10'), findsNothing);
  });

  testWidgets('rejects invalid target values and preserves the last result', (
    tester,
  ) async {
    await openApp(tester);
    await calculate(tester, target: '26', sizes: '6, 10');

    const invalidTargets = {
      '': 'Enter a target quantity.',
      '0': 'Enter a positive whole number.',
      '-1': 'Enter a positive whole number.',
      '+1': 'Enter a positive whole number.',
      '1.5': 'Enter a positive whole number.',
      'abc': 'Enter a positive whole number.',
      '100001': 'Enter 100000 or less.',
    };
    for (final entry in invalidTargets.entries) {
      await calculate(tester, target: entry.key, sizes: '6, 10');
      expect(
        find.text('Total units: 26'),
        findsOneWidget,
        reason: 'target "${entry.key}"',
      );
      expect(find.text(entry.value), findsOneWidget);
    }
  });

  testWidgets('rejects invalid pack lists and preserves the last result', (
    tester,
  ) async {
    await openApp(tester);
    await calculate(tester, target: '26', sizes: '6, 10');

    const invalidLists = {
      '': 'Enter one to five pack sizes.',
      '0': 'Use positive whole numbers for pack sizes.',
      '-6': 'Use positive whole numbers for pack sizes.',
      '+6': 'Use positive whole numbers for pack sizes.',
      '6.5': 'Use positive whole numbers for pack sizes.',
      'six': 'Use positive whole numbers for pack sizes.',
      '6, 6': 'Remove duplicate pack sizes.',
      '6,,10': 'Remove empty entries between commas.',
      '1,2,3,4,5,6': 'Enter no more than five pack sizes.',
      '100001': 'Each pack size must be 100000 or less.',
    };
    for (final entry in invalidLists.entries) {
      await calculate(tester, target: '26', sizes: entry.key);
      expect(
        find.text('Total units: 26'),
        findsOneWidget,
        reason: 'sizes "${entry.key}"',
      );
      expect(find.text(entry.value), findsOneWidget);
    }
  });

  testWidgets('switches to Korean immediately', (tester) async {
    await openApp(tester);
    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('locale-ko')));
    await tester.pumpAndSettle();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('포장 조합 플래너'), findsOneWidget);
    expect(find.text('목표 수량'), findsOneWidget);
  });

  testWidgets('restores a valid saved locale', (tester) async {
    SharedPreferences.setMockInitialValues({'app.locale': 'ko'});
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ko'),
    );
    expect(find.text('포장 조합 플래너'), findsOneWidget);
  });

  testWidgets('reset clears inputs, errors, and result', (tester) async {
    await openApp(tester);
    await calculate(tester, target: '26', sizes: '6, 10');

    final reset = find.byKey(const ValueKey('reset'));
    await tester.ensureVisible(reset);
    await tester.tap(reset);
    await tester.pump();

    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('target-input')))
          .controller!
          .text,
      isEmpty,
    );
    expect(find.text('Total units: 26'), findsNothing);
  });

  testWidgets('switches to Arabic with RTL and preserves inputs and results', (
    tester,
  ) async {
    await openApp(tester);
    await calculate(tester, target: '26', sizes: '6, 10');

    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    final arabic = find.byKey(const ValueKey('locale-ar'));
    await tester.ensureVisible(arabic);
    await tester.pumpAndSettle();
    await tester.tap(arabic);
    await tester.pumpAndSettle();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
      const Locale('ar'),
    );
    expect(find.text('مخطط توليفات العبوات'), findsOneWidget);
    expect(
      Directionality.of(
        tester.element(find.byKey(const ValueKey('target-input'))),
      ),
      TextDirection.rtl,
    );
    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('target-input')))
          .controller!
          .text,
      '26',
    );
    expect(find.text('إجمالي الوحدات: 26'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
