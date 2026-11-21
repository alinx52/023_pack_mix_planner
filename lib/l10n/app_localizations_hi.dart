// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'पैक मिश्रण योजनाकार';

  @override
  String get appDescription =>
      'वह पैक मिश्रण खोजें जो सबसे कम अतिरिक्त मात्रा के साथ लक्ष्य पूरा करे।';

  @override
  String get languageTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get targetQuantityLabel => 'लक्षित मात्रा';

  @override
  String get targetQuantityHint => 'उदाहरण: 26';

  @override
  String get packSizesLabel => 'पैक आकार';

  @override
  String get packSizesHint => 'उदाहरण: 6, 10';

  @override
  String get packSizesHelper => 'अल्पविराम से अलग 1–5 अलग आकार दर्ज करें';

  @override
  String get findMix => 'मिश्रण खोजें';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get bestMix => 'सर्वोत्तम मिश्रण';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'कुल इकाइयाँ: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'लक्षित मात्रा: $value';
  }

  @override
  String surplus(int value) {
    return 'अतिरिक्त: $value';
  }

  @override
  String totalPacks(int value) {
    return 'कुल पैक: $value';
  }

  @override
  String get limitationNote =>
      'केवल मात्रा पर विचार किया जाता है। मूल्य, वजन, आयाम, स्टॉक, विकल्प, शिपिंग, समाप्ति या विक्रेता के पैक मिलाने के नियम शामिल नहीं हैं।';

  @override
  String get targetRequired => 'लक्षित मात्रा दर्ज करें।';

  @override
  String get positiveWholeNumberError => 'धनात्मक पूर्णांक दर्ज करें।';

  @override
  String maximumValueError(int maximum) {
    return '$maximum या उससे कम दर्ज करें।';
  }

  @override
  String get packSizesRequired => 'एक से पाँच पैक आकार दर्ज करें।';

  @override
  String get malformedPackSizesError =>
      'अल्पविरामों के बीच खाली प्रविष्टियाँ हटाएँ।';

  @override
  String get tooManyPackSizesError => 'पाँच से अधिक पैक आकार दर्ज न करें।';

  @override
  String get positivePackSizesError =>
      'पैक आकार के लिए धनात्मक पूर्णांक उपयोग करें।';

  @override
  String maximumPackSizeError(int maximum) {
    return 'हर पैक आकार $maximum या उससे कम होना चाहिए।';
  }

  @override
  String get duplicatePackSizesError => 'दोहराए गए पैक आकार हटाएँ।';
}
