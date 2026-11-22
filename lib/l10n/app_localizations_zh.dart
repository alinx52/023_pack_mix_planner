// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '包装组合规划器';

  @override
  String get appDescription => '找出满足目标数量且余量最少的包装组合。';

  @override
  String get languageTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感设计';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get targetQuantityLabel => '目标数量';

  @override
  String get targetQuantityHint => '例如：26';

  @override
  String get packSizesLabel => '包装规格';

  @override
  String get packSizesHint => '例如：6, 10';

  @override
  String get packSizesHelper => '输入1至5个不同规格，用逗号分隔';

  @override
  String get findMix => '查找组合';

  @override
  String get reset => '重置';

  @override
  String get bestMix => '最佳组合';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return '总数量：$value';
  }

  @override
  String targetQuantityResult(int value) {
    return '目标数量：$value';
  }

  @override
  String surplus(int value) {
    return '余量：$value';
  }

  @override
  String totalPacks(int value) {
    return '包装总数：$value';
  }

  @override
  String get limitationNote => '仅考虑数量，不考虑价格、重量、尺寸、库存、替代品、配送、有效期或卖家是否允许混合包装。';

  @override
  String get targetRequired => '请输入目标数量。';

  @override
  String get positiveWholeNumberError => '请输入正整数。';

  @override
  String maximumValueError(int maximum) {
    return '请输入不大于$maximum的数。';
  }

  @override
  String get packSizesRequired => '请输入一至五个包装规格。';

  @override
  String get malformedPackSizesError => '请删除逗号之间的空项。';

  @override
  String get tooManyPackSizesError => '包装规格不得超过五个。';

  @override
  String get positivePackSizesError => '包装规格只能使用正整数。';

  @override
  String maximumPackSizeError(int maximum) {
    return '每个包装规格不得大于$maximum。';
  }

  @override
  String get duplicatePackSizesError => '请删除重复的包装规格。';

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '包装规格组合规划指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线计算满足目标需求数量时的固定包装规格组合，优先将多余超额数量降至最低，其次将总包装件数降至最少。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '输入目标所需数量以及用逗号分隔的可选包装规格（如 50, 20, 10），然后点击“查找最佳组合”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '显示每种包装规格需采购的件数、最终交付的总数量、超额多余数量以及总包装盒数。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '目标: 70件 | 可选规格: 25, 10\n结果: 2盒25件装 + 2盒10件装 = 正好70件 (超额 0件，共 4盒)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '整数规划数学算法工具。不考虑供应商实际即时库存、批量折扣价格、起订量限制或运费等商业变数。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有计算均在本地离线执行，无网络数据上传。屏幕下方展示标准Google AdMob横幅广告。';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '包装组合规划器';

  @override
  String get appDescription => '找出满足目标数量且余量最少的包装组合。';

  @override
  String get languageTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感设计';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get targetQuantityLabel => '目标数量';

  @override
  String get targetQuantityHint => '例如：26';

  @override
  String get packSizesLabel => '包装规格';

  @override
  String get packSizesHint => '例如：6, 10';

  @override
  String get packSizesHelper => '输入1至5个不同规格，用逗号分隔';

  @override
  String get findMix => '查找组合';

  @override
  String get reset => '重置';

  @override
  String get bestMix => '最佳组合';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return '总数量：$value';
  }

  @override
  String targetQuantityResult(int value) {
    return '目标数量：$value';
  }

  @override
  String surplus(int value) {
    return '余量：$value';
  }

  @override
  String totalPacks(int value) {
    return '包装总数：$value';
  }

  @override
  String get limitationNote => '仅考虑数量，不考虑价格、重量、尺寸、库存、替代品、配送、有效期或卖家是否允许混合包装。';

  @override
  String get targetRequired => '请输入目标数量。';

  @override
  String get positiveWholeNumberError => '请输入正整数。';

  @override
  String maximumValueError(int maximum) {
    return '请输入不大于$maximum的数。';
  }

  @override
  String get packSizesRequired => '请输入一至五个包装规格。';

  @override
  String get malformedPackSizesError => '请删除逗号之间的空项。';

  @override
  String get tooManyPackSizesError => '包装规格不得超过五个。';

  @override
  String get positivePackSizesError => '包装规格只能使用正整数。';

  @override
  String maximumPackSizeError(int maximum) {
    return '每个包装规格不得大于$maximum。';
  }

  @override
  String get duplicatePackSizesError => '请删除重复的包装规格。';

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '包装规格组合规划指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '离线计算满足目标需求数量时的固定包装规格组合，优先将多余超额数量降至最低，其次将总包装件数降至最少。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '输入目标所需数量以及用逗号分隔的可选包装规格（如 50, 20, 10），然后点击“查找最佳组合”。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '显示每种包装规格需采购的件数、最终交付的总数量、超额多余数量以及总包装盒数。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '目标: 70件 | 可选规格: 25, 10\n结果: 2盒25件装 + 2盒10件装 = 正好70件 (超额 0件，共 4盒)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '整数规划数学算法工具。不考虑供应商实际即时库存、批量折扣价格、起订量限制或运费等商业变数。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有计算均在本地离线执行，无网络数据上传。屏幕下方展示标准Google AdMob横幅广告。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '包裝組合規劃器';

  @override
  String get appDescription => '找出符合目標數量且餘量最少的包裝組合。';

  @override
  String get languageTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感設計';

  @override
  String get appearanceFlat => '平面';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get targetQuantityLabel => '目標數量';

  @override
  String get targetQuantityHint => '例如：26';

  @override
  String get packSizesLabel => '包裝規格';

  @override
  String get packSizesHint => '例如：6, 10';

  @override
  String get packSizesHelper => '輸入1至5個不同規格，以逗號分隔';

  @override
  String get findMix => '尋找組合';

  @override
  String get reset => '重設';

  @override
  String get bestMix => '最佳組合';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return '總數量：$value';
  }

  @override
  String targetQuantityResult(int value) {
    return '目標數量：$value';
  }

  @override
  String surplus(int value) {
    return '餘量：$value';
  }

  @override
  String totalPacks(int value) {
    return '包裝總數：$value';
  }

  @override
  String get limitationNote => '僅考量數量，不考量價格、重量、尺寸、庫存、替代品、運送、有效期限或賣家是否允許混合包裝。';

  @override
  String get targetRequired => '請輸入目標數量。';

  @override
  String get positiveWholeNumberError => '請輸入正整數。';

  @override
  String maximumValueError(int maximum) {
    return '請輸入不大於$maximum的數值。';
  }

  @override
  String get packSizesRequired => '請輸入一至五個包裝規格。';

  @override
  String get malformedPackSizesError => '請刪除逗號之間的空白項目。';

  @override
  String get tooManyPackSizesError => '包裝規格不得超過五個。';

  @override
  String get positivePackSizesError => '包裝規格只能使用正整數。';

  @override
  String maximumPackSizeError(int maximum) {
    return '每個包裝規格不得大於$maximum。';
  }

  @override
  String get duplicatePackSizesError => '請刪除重複的包裝規格。';

  @override
  String get helpTooltip => '說明與指南';

  @override
  String get helpTitle => '包裝規格組合規劃指南';

  @override
  String get helpProblemSolvedTitle => '解決的問題';

  @override
  String get helpProblemSolvedContent =>
      '離線計算滿足目標數量時的固定包裝規格組合，優先將超量多買的數額降至最低，其次將總包裝件數最小化。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '輸入目標需求數量以及以逗號分隔的可選包裝規格（如 50, 20, 10），接著點擊「尋找最佳組合」。';

  @override
  String get helpReadingResultsTitle => '查看結果';

  @override
  String get helpReadingResultsContent =>
      '清楚列出各包裝規格需採購的件數、總供應數量、超額多出數量及採購的總包裝件數。';

  @override
  String get helpExampleTitle => '範例';

  @override
  String get helpExampleContent =>
      '目標: 70件 | 可選規格: 25, 10\n結果: 2盒25件裝 + 2盒10件裝 = 正好70件 (超額 0件，共 4盒)。';

  @override
  String get helpLimitsTitle => '驗證與限制';

  @override
  String get helpLimitsContent => '整數規劃數學演算工具。不考慮廠商即時庫存量、批量採購折扣、最低訂購限制或物流費用。';

  @override
  String get helpDataAndPrivacyTitle => '本機資料與廣告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有計算均在裝置本機離線執行，無網路傳輸。螢幕下方顯示標準Google AdMob橫幅廣告。';
}
