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
}
