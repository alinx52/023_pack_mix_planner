// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Планировщик упаковок';

  @override
  String get appDescription =>
      'Находит сочетание упаковок, которое достигает цели с наименьшим излишком.';

  @override
  String get languageTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальный стиль';

  @override
  String get appearanceFlat => 'Плоский стиль';

  @override
  String get appearanceSoft => 'Мягкий стиль';

  @override
  String get targetQuantityLabel => 'Целевое количество';

  @override
  String get targetQuantityHint => 'Например, 26';

  @override
  String get packSizesLabel => 'Размеры упаковок';

  @override
  String get packSizesHint => 'Например, 6, 10';

  @override
  String get packSizesHelper => 'Введите 1–5 разных размеров через запятую';

  @override
  String get findMix => 'Найти сочетание';

  @override
  String get reset => 'Сбросить';

  @override
  String get bestMix => 'Лучшее сочетание';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Всего единиц: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Целевое количество: $value';
  }

  @override
  String surplus(int value) {
    return 'Излишек: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Всего упаковок: $value';
  }

  @override
  String get limitationNote =>
      'Учитывается только количество. Цена, вес, размеры, наличие, замены, доставка, срок годности и правила продавца о смешивании упаковок не учитываются.';

  @override
  String get targetRequired => 'Введите целевое количество.';

  @override
  String get positiveWholeNumberError => 'Введите положительное целое число.';

  @override
  String maximumValueError(int maximum) {
    return 'Введите не более $maximum.';
  }

  @override
  String get packSizesRequired =>
      'Введите от одного до пяти размеров упаковок.';

  @override
  String get malformedPackSizesError =>
      'Удалите пустые элементы между запятыми.';

  @override
  String get tooManyPackSizesError =>
      'Введите не более пяти размеров упаковок.';

  @override
  String get positivePackSizesError => 'Используйте положительные целые числа.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Размер упаковки не должен превышать $maximum.';
  }

  @override
  String get duplicatePackSizesError =>
      'Удалите повторяющиеся размеры упаковок.';
}
