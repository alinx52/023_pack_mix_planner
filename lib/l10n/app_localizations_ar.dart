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

  @override
  String get helpTooltip => 'المساعدة والدليل';

  @override
  String get helpTitle => 'دليل تخطيط تشكيلات الطرود';

  @override
  String get helpProblemSolvedTitle => 'المشكلة التي يعالجها';

  @override
  String get helpProblemSolvedContent =>
      'يجد أفضل تركيبة من أحجام الطرود الثابتة للوصول إلى الكمية المستهدفة مع تقليل الفائض أولاً ثم تقليل إجمالي عدد الطرود.';

  @override
  String get helpHowToUseTitle => 'طريقة الاستخدام';

  @override
  String get helpHowToUseContent =>
      'أدخل الكمية المطلوبة وأحجام العبوات المتاحة مفصولة بفواصل (مثل 50, 20, 10)، ثم اضغط إيجاد أفضل تشكيلة.';

  @override
  String get helpReadingResultsTitle => 'قراءة النتائج';

  @override
  String get helpReadingResultsContent =>
      'يعرض عدد الطرود المطلوب من كل حجم، وإجمالي الوحدات المستلمة، والوحدات الفائضة، وإجمالي عدد الطرود.';

  @override
  String get helpExampleTitle => 'مثال توضيحي';

  @override
  String get helpExampleContent =>
      'الهدف: 70 وحدة | الأحجام: 25، 10\nالنتيجة: عبوتان من 25 + عبوتان من 10 = 70 وحدة تمامًا (بدون فائض، 4 عبوات إجمالاً).';

  @override
  String get helpLimitsTitle => 'التحقق والقيود';

  @override
  String get helpLimitsContent =>
      'حاسبة تحسين رياضية للأعداد الصحيحة فقط. لا تراعي توفر المخزون الفعلي لدى المورد أو خصومات الشراء أو رسوم التوصيل.';

  @override
  String get helpDataAndPrivacyTitle => 'البيانات المحلية والإعلانات';

  @override
  String get helpDataAndPrivacyContent =>
      'تتم جميع الحسابات محليًا دون أي اتصال بالإنترنت. يظهر شريط إعلاني قياسي من AdMob أسفل الشاشة.';
}
