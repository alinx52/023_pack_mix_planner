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

  @override
  String get helpTooltip => 'Hilfe & Anleitung';

  @override
  String get helpTitle => 'Packungsgrößen-Kombinations-Leitfaden';

  @override
  String get helpProblemSolvedTitle => 'Gelöstes Problem';

  @override
  String get helpProblemSolvedContent =>
      'Ermittelt offline die optimale Kombination fester Packungsgrößen für eine Zielmenge bei minimalem Überhang und minimaler Packungszahl.';

  @override
  String get helpHowToUseTitle => 'Bedienung';

  @override
  String get helpHowToUseContent =>
      'Geben Sie die Zielmenge und Packungsgrößen kommagetrennt ein (z.B. 50, 20, 10) und tippen Sie auf Kombination finden.';

  @override
  String get helpReadingResultsTitle => 'Ergebnisse verstehen';

  @override
  String get helpReadingResultsContent =>
      'Zeigt die Anzahl jeder Packungsgröße, die gelieferte Gesamtmenge, überzählige Einheiten und die Gesamtzahl der Pakete.';

  @override
  String get helpExampleTitle => 'Beispiel';

  @override
  String get helpExampleContent =>
      'Ziel: 70 Stück | Größen: 25, 10\nErgebnis: 2x 25er + 2x 10er = Exakt 70 Stück (0 Überhang, 4 Packungen gesamt).';

  @override
  String get helpLimitsTitle => 'Validierung & Grenzen';

  @override
  String get helpLimitsContent =>
      'Reines mathematisches Optimierungstool. Berücksichtigt weder Lieferantenbestände noch Mengenrabatte oder Versandkosten.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale Daten & Werbung';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle Berechnungen laufen lokal auf dem Gerät ohne Internetkommunikation. Unten wird ein AdMob-Banner angezeigt.';
}
