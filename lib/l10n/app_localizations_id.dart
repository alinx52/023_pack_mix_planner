// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Perencana Campuran Kemasan';

  @override
  String get appDescription =>
      'Temukan campuran kemasan yang memenuhi target dengan kelebihan paling sedikit.';

  @override
  String get languageTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Gaya material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get targetQuantityLabel => 'Jumlah target';

  @override
  String get targetQuantityHint => 'Contoh: 26';

  @override
  String get packSizesLabel => 'Ukuran kemasan';

  @override
  String get packSizesHint => 'Contoh: 6, 10';

  @override
  String get packSizesHelper => 'Masukkan 1–5 ukuran unik yang dipisahkan koma';

  @override
  String get findMix => 'Cari campuran';

  @override
  String get reset => 'Atur ulang';

  @override
  String get bestMix => 'Campuran terbaik';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Total unit: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Jumlah target: $value';
  }

  @override
  String surplus(int value) {
    return 'Kelebihan: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Total kemasan: $value';
  }

  @override
  String get limitationNote =>
      'Hanya mempertimbangkan jumlah. Harga, berat, dimensi, stok, penggantian, pengiriman, kedaluwarsa, dan aturan penjual tentang pencampuran kemasan tidak diperhitungkan.';

  @override
  String get targetRequired => 'Masukkan jumlah target.';

  @override
  String get positiveWholeNumberError => 'Masukkan bilangan bulat positif.';

  @override
  String maximumValueError(int maximum) {
    return 'Masukkan $maximum atau kurang.';
  }

  @override
  String get packSizesRequired => 'Masukkan satu hingga lima ukuran kemasan.';

  @override
  String get malformedPackSizesError => 'Hapus entri kosong di antara koma.';

  @override
  String get tooManyPackSizesError =>
      'Masukkan paling banyak lima ukuran kemasan.';

  @override
  String get positivePackSizesError =>
      'Gunakan bilangan bulat positif untuk ukuran kemasan.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Setiap ukuran kemasan harus $maximum atau kurang.';
  }

  @override
  String get duplicatePackSizesError => 'Hapus ukuran kemasan yang sama.';

  @override
  String get helpTooltip => 'Bantuan & Panduan';

  @override
  String get helpTitle => 'Panduan Perencana Kombinasi Kemasan';

  @override
  String get helpProblemSolvedTitle => 'Masalah yang Diatasi';

  @override
  String get helpProblemSolvedContent =>
      'Menemukan kombinasi ukuran kemasan tetap yang optimal untuk memenuhi target jumlah, meminimalkan kelebihan dan jumlah kemasan.';

  @override
  String get helpHowToUseTitle => 'Cara Penggunaan';

  @override
  String get helpHowToUseContent =>
      'Masukkan jumlah yang dibutuhkan dan ukuran kemasan yang tersedia dipisahkan tanda koma (mis. 50, 20, 10), lalu ketuk Cari kombinasi.';

  @override
  String get helpReadingResultsTitle => 'Membaca Hasil';

  @override
  String get helpReadingResultsContent =>
      'Menampilkan jumlah setiap ukuran kemasan yang harus dibeli, total barang, kelebihan barang, dan total kemasan.';

  @override
  String get helpExampleTitle => 'Contoh';

  @override
  String get helpExampleContent =>
      'Target: 70 unit | Ukuran: 25, 10\nHasil: 2x isi 25 + 2x isi 10 = Tepat 70 unit (0 kelebihan, total 4 kemasan).';

  @override
  String get helpLimitsTitle => 'Validasi & Batasan';

  @override
  String get helpLimitsContent =>
      'Kalkulator optimasi bilangan bulat. Tidak memperhitungkan stok riil pemasok, diskon grosir, atau ongkos kirim.';

  @override
  String get helpDataAndPrivacyTitle => 'Data Lokal & Iklan';

  @override
  String get helpDataAndPrivacyContent =>
      'Semua perhitungan berjalan secara lokal tanpa komunikasi internet. Spanduk AdMob ditampilkan di bawah.';
}
