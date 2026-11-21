// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Pack Mix Planner';

  @override
  String get appDescription =>
      'Find a mix of available pack sizes that meets a target quantity with the least surplus.';

  @override
  String get languageTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get targetQuantityLabel => 'Target quantity';

  @override
  String get targetQuantityHint => 'For example, 26';

  @override
  String get packSizesLabel => 'Pack sizes';

  @override
  String get packSizesHint => 'For example, 6, 10';

  @override
  String get packSizesHelper => 'Enter 1–5 unique sizes, separated by commas';

  @override
  String get findMix => 'Find mix';

  @override
  String get reset => 'Reset';

  @override
  String get bestMix => 'Best mix';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Total units: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Target quantity: $value';
  }

  @override
  String surplus(int value) {
    return 'Surplus: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Total packs: $value';
  }

  @override
  String get limitationNote =>
      'Quantity only. This planner does not account for price, weight, dimensions, stock, substitutions, shipping, expiry, or seller mixing rules.';

  @override
  String get targetRequired => 'Enter a target quantity.';

  @override
  String get positiveWholeNumberError => 'Enter a positive whole number.';

  @override
  String maximumValueError(int maximum) {
    return 'Enter $maximum or less.';
  }

  @override
  String get packSizesRequired => 'Enter one to five pack sizes.';

  @override
  String get malformedPackSizesError => 'Remove empty entries between commas.';

  @override
  String get tooManyPackSizesError => 'Enter no more than five pack sizes.';

  @override
  String get positivePackSizesError =>
      'Use positive whole numbers for pack sizes.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Each pack size must be $maximum or less.';
  }

  @override
  String get duplicatePackSizesError => 'Remove duplicate pack sizes.';
}
