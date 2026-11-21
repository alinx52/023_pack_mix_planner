// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Packungsplaner';

  @override
  String get appDescription =>
      'Ermittelt die Packungsmischung, die das Ziel mit dem kleinsten Überschuss erreicht.';

  @override
  String get languageTooltip => 'Sprache wählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceTooltip => 'Darstellung wählen';

  @override
  String get appearanceMaterial => 'Materialstil';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Sanft';

  @override
  String get targetQuantityLabel => 'Zielmenge';

  @override
  String get targetQuantityHint => 'Zum Beispiel 26';

  @override
  String get packSizesLabel => 'Packungsgrößen';

  @override
  String get packSizesHint => 'Zum Beispiel 6, 10';

  @override
  String get packSizesHelper =>
      '1–5 unterschiedliche Größen durch Kommas getrennt eingeben';

  @override
  String get findMix => 'Mischung finden';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get bestMix => 'Beste Mischung';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Gesamteinheiten: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Zielmenge: $value';
  }

  @override
  String surplus(int value) {
    return 'Überschuss: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Packungen gesamt: $value';
  }

  @override
  String get limitationNote =>
      'Berücksichtigt nur die Menge, nicht Preis, Gewicht, Abmessungen, Bestand, Ersatzartikel, Versand, Ablaufdatum oder Regeln des Verkäufers zum Mischen von Packungen.';

  @override
  String get targetRequired => 'Geben Sie eine Zielmenge ein.';

  @override
  String get positiveWholeNumberError =>
      'Geben Sie eine positive ganze Zahl ein.';

  @override
  String maximumValueError(int maximum) {
    return 'Geben Sie höchstens $maximum ein.';
  }

  @override
  String get packSizesRequired => 'Geben Sie eine bis fünf Packungsgrößen ein.';

  @override
  String get malformedPackSizesError =>
      'Entfernen Sie leere Einträge zwischen Kommas.';

  @override
  String get tooManyPackSizesError =>
      'Geben Sie höchstens fünf Packungsgrößen ein.';

  @override
  String get positivePackSizesError =>
      'Verwenden Sie positive ganze Zahlen für Packungsgrößen.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Jede Packungsgröße darf höchstens $maximum sein.';
  }

  @override
  String get duplicatePackSizesError =>
      'Entfernen Sie doppelte Packungsgrößen.';
}
