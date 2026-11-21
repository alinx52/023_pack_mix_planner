// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مخطط توليفات العبوات';

  @override
  String get appDescription =>
      'اعثر على توليفة العبوات التي تحقق الكمية المطلوبة بأقل فائض.';

  @override
  String get languageTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get targetQuantityLabel => 'الكمية المطلوبة';

  @override
  String get targetQuantityHint => 'مثال: 26';

  @override
  String get packSizesLabel => 'أحجام العبوات';

  @override
  String get packSizesHint => 'مثال: 6, 10';

  @override
  String get packSizesHelper =>
      'أدخل من حجم واحد إلى 5 أحجام مختلفة وافصل بينها بفواصل';

  @override
  String get findMix => 'العثور على التوليفة';

  @override
  String get reset => 'إعادة ضبط';

  @override
  String get bestMix => 'أفضل توليفة';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'إجمالي الوحدات: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'الكمية المطلوبة: $value';
  }

  @override
  String surplus(int value) {
    return 'الفائض: $value';
  }

  @override
  String totalPacks(int value) {
    return 'إجمالي العبوات: $value';
  }

  @override
  String get limitationNote =>
      'يراعي الكمية فقط، ولا يراعي السعر أو الوزن أو الأبعاد أو المخزون أو البدائل أو الشحن أو الصلاحية أو قواعد البائع بشأن خلط أحجام العبوات.';

  @override
  String get targetRequired => 'أدخل الكمية المطلوبة.';

  @override
  String get positiveWholeNumberError => 'أدخل عددًا صحيحًا موجبًا.';

  @override
  String maximumValueError(int maximum) {
    return 'أدخل $maximum أو أقل.';
  }

  @override
  String get packSizesRequired => 'أدخل من حجم عبوة واحد إلى خمسة أحجام.';

  @override
  String get malformedPackSizesError => 'احذف الخانات الفارغة بين الفواصل.';

  @override
  String get tooManyPackSizesError => 'لا تدخل أكثر من خمسة أحجام للعبوات.';

  @override
  String get positivePackSizesError =>
      'استخدم أعدادًا صحيحة موجبة لأحجام العبوات.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'يجب ألا يزيد كل حجم عبوة عن $maximum.';
  }

  @override
  String get duplicatePackSizesError => 'احذف أحجام العبوات المكررة.';
}
