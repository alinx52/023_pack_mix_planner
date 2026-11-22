// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình lập kế hoạch gói';

  @override
  String get appDescription =>
      'Tìm cách kết hợp gói đạt số lượng mục tiêu với phần dư ít nhất.';

  @override
  String get languageTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Vật liệu';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm mại';

  @override
  String get targetQuantityLabel => 'Số lượng mục tiêu';

  @override
  String get targetQuantityHint => 'Ví dụ: 26';

  @override
  String get packSizesLabel => 'Kích cỡ gói';

  @override
  String get packSizesHint => 'Ví dụ: 6, 10';

  @override
  String get packSizesHelper =>
      'Nhập 1–5 kích cỡ khác nhau, phân cách bằng dấu phẩy';

  @override
  String get findMix => 'Tìm cách kết hợp';

  @override
  String get reset => 'Đặt lại';

  @override
  String get bestMix => 'Cách kết hợp tốt nhất';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Tổng số đơn vị: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Số lượng mục tiêu: $value';
  }

  @override
  String surplus(int value) {
    return 'Phần dư: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Tổng số gói: $value';
  }

  @override
  String get limitationNote =>
      'Chỉ xét số lượng; không xét giá, trọng lượng, kích thước, tồn kho, sản phẩm thay thế, vận chuyển, hạn dùng hoặc quy định của người bán về việc kết hợp gói.';

  @override
  String get targetRequired => 'Nhập số lượng mục tiêu.';

  @override
  String get positiveWholeNumberError => 'Nhập số nguyên dương.';

  @override
  String maximumValueError(int maximum) {
    return 'Nhập $maximum trở xuống.';
  }

  @override
  String get packSizesRequired => 'Nhập từ một đến năm kích cỡ gói.';

  @override
  String get malformedPackSizesError => 'Xóa các mục trống giữa các dấu phẩy.';

  @override
  String get tooManyPackSizesError => 'Không nhập quá năm kích cỡ gói.';

  @override
  String get positivePackSizesError =>
      'Chỉ dùng số nguyên dương cho kích cỡ gói.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Mỗi kích cỡ gói phải từ $maximum trở xuống.';
  }

  @override
  String get duplicatePackSizesError => 'Xóa các kích cỡ gói trùng nhau.';

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn lập kế hoạch kết hợp gói';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Tìm sự kết hợp tối ưu giữa các cỡ gói cố định để đáp ứng số lượng mục tiêu, giảm thiểu số dư thừa và số lượng gói.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Nhập số lượng mục tiêu cần thiết và các kích cỡ gói có sẵn cách nhau bằng dấu phẩy (ví dụ 50, 20, 10), sau đó nhấn Tìm kết hợp tốt nhất.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị số lượng chính xác của từng cỡ gói cần đặt, tổng số mặt hàng, số lượng dư thừa và tổng số gói hàng.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Mục tiêu: 70 đơn vị | Cỡ: 25, 10\nKết quả: 2x gói 25 + 2x gói 10 = Đúng 70 đơn vị (dư 0, tổng cộng 4 gói).';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Chỉ là công cụ tối ưu hóa số nguyên. Không tính đến lượng hàng tồn kho thực tế, giảm giá số lượng lớn hoặc phí giao hàng.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tất cả các phép tính chạy hoàn toàn trên thiết bị mà không cần internet. Biểu ngữ AdMob hiển thị ở dưới cùng.';
}
