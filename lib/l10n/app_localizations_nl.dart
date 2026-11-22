// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Verpakkingsplanner';

  @override
  String get appDescription =>
      'Vind de combinatie van verpakkingen die het doel met het kleinste overschot bereikt.';

  @override
  String get languageTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get targetQuantityLabel => 'Doelhoeveelheid';

  @override
  String get targetQuantityHint => 'Bijvoorbeeld 26';

  @override
  String get packSizesLabel => 'Verpakkingsgroottes';

  @override
  String get packSizesHint => 'Bijvoorbeeld 6, 10';

  @override
  String get packSizesHelper =>
      'Voer 1–5 unieke groottes in, gescheiden door komma’s';

  @override
  String get findMix => 'Combinatie zoeken';

  @override
  String get reset => 'Herstellen';

  @override
  String get bestMix => 'Beste combinatie';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Totaal aantal eenheden: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Doelhoeveelheid: $value';
  }

  @override
  String surplus(int value) {
    return 'Overschot: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Totaal aantal verpakkingen: $value';
  }

  @override
  String get limitationNote =>
      'Houdt alleen rekening met hoeveelheid, niet met prijs, gewicht, afmetingen, voorraad, vervangingen, verzending, houdbaarheid of regels van de verkoper over gemengde verpakkingen.';

  @override
  String get targetRequired => 'Voer een doelhoeveelheid in.';

  @override
  String get positiveWholeNumberError => 'Voer een positief geheel getal in.';

  @override
  String maximumValueError(int maximum) {
    return 'Voer $maximum of minder in.';
  }

  @override
  String get packSizesRequired => 'Voer één tot vijf verpakkingsgroottes in.';

  @override
  String get malformedPackSizesError => 'Verwijder lege items tussen komma’s.';

  @override
  String get tooManyPackSizesError =>
      'Voer maximaal vijf verpakkingsgroottes in.';

  @override
  String get positivePackSizesError =>
      'Gebruik positieve gehele getallen voor groottes.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Elke grootte mag maximaal $maximum zijn.';
  }

  @override
  String get duplicatePackSizesError =>
      'Verwijder dubbele verpakkingsgroottes.';

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor verpakkingsmix';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Vindt de optimale combinatie van vaste verpakkingsgroottes voor een doelhoeveelheid met minimaal overschot en minimale doosaantallen.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Voer de gewenste hoeveelheid en beschikbare verpakkingsgroottes in (bijv. 50, 20, 10) en tik op Zoeken.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont het aantal van elke verpakkingsgrootte, de totale geleverde hoeveelheid, overtollige stuks en het aantal dozen.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Doel: 70 stuks | Groottes: 25, 10\nResultaat: 2x pak van 25 + 2x pak van 10 = Exact 70 stuks (0 overschot, 4 pakken totaal).';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Gehele-getallenoptimalisatie. Houdt geen rekening met werkelijke voorraden, staffelkortingen of verzendkosten.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Alle berekeningen worden lokaal uitgevoerd zonder internetverbinding. Onderaan staat een standaard AdMob-banner.';
}
