// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '포장 조합 플래너';

  @override
  String get appDescription => '목표 수량을 충족하면서 초과분이 가장 적은 포장 조합을 찾습니다.';

  @override
  String get languageTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '평면형';

  @override
  String get appearanceSoft => '부드러운 스타일';

  @override
  String get targetQuantityLabel => '목표 수량';

  @override
  String get targetQuantityHint => '예: 26';

  @override
  String get packSizesLabel => '포장 단위';

  @override
  String get packSizesHint => '예: 6, 10';

  @override
  String get packSizesHelper => '서로 다른 단위 1~5개를 쉼표로 구분하세요';

  @override
  String get findMix => '조합 찾기';

  @override
  String get reset => '초기화';

  @override
  String get bestMix => '최적 조합';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return '총 수량: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return '목표 수량: $value';
  }

  @override
  String surplus(int value) {
    return '초과 수량: $value';
  }

  @override
  String totalPacks(int value) {
    return '총 포장 수: $value';
  }

  @override
  String get limitationNote =>
      '수량만 고려합니다. 가격, 무게, 크기, 재고, 대체품, 배송, 유효기간 또는 판매자의 혼합 포장 허용 여부는 반영하지 않습니다.';

  @override
  String get targetRequired => '목표 수량을 입력하세요.';

  @override
  String get positiveWholeNumberError => '양의 정수를 입력하세요.';

  @override
  String maximumValueError(int maximum) {
    return '$maximum 이하로 입력하세요.';
  }

  @override
  String get packSizesRequired => '포장 단위를 1~5개 입력하세요.';

  @override
  String get malformedPackSizesError => '쉼표 사이의 빈 항목을 삭제하세요.';

  @override
  String get tooManyPackSizesError => '포장 단위는 5개까지만 입력하세요.';

  @override
  String get positivePackSizesError => '포장 단위에는 양의 정수만 사용하세요.';

  @override
  String maximumPackSizeError(int maximum) {
    return '각 포장 단위는 $maximum 이하여야 합니다.';
  }

  @override
  String get duplicatePackSizesError => '중복된 포장 단위를 삭제하세요.';
}
