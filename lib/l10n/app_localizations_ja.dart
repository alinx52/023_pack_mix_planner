// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'パック組み合わせプランナー';

  @override
  String get appDescription => '目標数量を満たし、余りが最少になるパックの組み合わせを探します。';

  @override
  String get languageTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceTooltip => '表示スタイルを選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get targetQuantityLabel => '目標数量';

  @override
  String get targetQuantityHint => '例：26';

  @override
  String get packSizesLabel => 'パックサイズ';

  @override
  String get packSizesHint => '例：6, 10';

  @override
  String get packSizesHelper => '異なるサイズを1～5個、カンマで区切って入力';

  @override
  String get findMix => '組み合わせを探す';

  @override
  String get reset => 'リセット';

  @override
  String get bestMix => '最適な組み合わせ';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return '合計数量：$value';
  }

  @override
  String targetQuantityResult(int value) {
    return '目標数量：$value';
  }

  @override
  String surplus(int value) {
    return '余り：$value';
  }

  @override
  String totalPacks(int value) {
    return '合計パック数：$value';
  }

  @override
  String get limitationNote =>
      '数量のみを考慮します。価格、重量、寸法、在庫、代替品、配送、使用期限、販売者の混載可否は考慮しません。';

  @override
  String get targetRequired => '目標数量を入力してください。';

  @override
  String get positiveWholeNumberError => '正の整数を入力してください。';

  @override
  String maximumValueError(int maximum) {
    return '$maximum以下で入力してください。';
  }

  @override
  String get packSizesRequired => '1～5個のパックサイズを入力してください。';

  @override
  String get malformedPackSizesError => 'カンマ間の空の項目を削除してください。';

  @override
  String get tooManyPackSizesError => 'パックサイズは5個以内で入力してください。';

  @override
  String get positivePackSizesError => 'パックサイズには正の整数を使用してください。';

  @override
  String maximumPackSizeError(int maximum) {
    return '各パックサイズは$maximum以下にしてください。';
  }

  @override
  String get duplicatePackSizesError => '重複するパックサイズを削除してください。';

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => 'パッケージ組合せプランナーガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      '決められた入り数のパッケージ（10個入り、25個入りなど）を組み合わせて目標数量を満たす際、余りを最小化し、次に箱数を最小化する最適組合せを計算します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '必要な目標数量と、購入可能なパッケージ入り数（カンマ区切り、例: 50, 20, 10）を入力し、「最適組合せを検索」をタップします。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '各パッケージの必要箱数、合計数量、余剰数量、および購入する総パッケージ数がわかりやすく表示されます。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '目標: 70個 | パッケージ: 25, 10\n結果: 25個入り 2箱 + 10個入り 2箱 = ぴったり70個 (余剰 0個、合計 4箱)。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      '整数最適化に基づく計算ツールです。販売店の実際の在庫状況、まとめ買い割引価格、送料や最小注文条件を保証するものではありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      'すべての計算は外部通信なしで端末内でのみ処理されます。画面下部に標準AdMobバ너が表示されます。';
}
