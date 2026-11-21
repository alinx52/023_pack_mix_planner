// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Pianificatore di confezioni';

  @override
  String get appDescription =>
      'Trova la combinazione di confezioni che raggiunge l’obiettivo con la minore eccedenza.';

  @override
  String get languageTooltip => 'Scegli la lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceTooltip => 'Scegli l’aspetto';

  @override
  String get appearanceMaterial => 'Materiale';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get targetQuantityLabel => 'Quantità obiettivo';

  @override
  String get targetQuantityHint => 'Ad esempio, 26';

  @override
  String get packSizesLabel => 'Dimensioni confezioni';

  @override
  String get packSizesHint => 'Ad esempio, 6, 10';

  @override
  String get packSizesHelper =>
      'Inserisci da 1 a 5 dimensioni uniche separate da virgole';

  @override
  String get findMix => 'Trova combinazione';

  @override
  String get reset => 'Reimposta';

  @override
  String get bestMix => 'Combinazione migliore';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Unità totali: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Quantità obiettivo: $value';
  }

  @override
  String surplus(int value) {
    return 'Eccedenza: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Confezioni totali: $value';
  }

  @override
  String get limitationNote =>
      'Considera solo la quantità. Non tiene conto di prezzo, peso, dimensioni, scorte, sostituzioni, spedizione, scadenza o regole del venditore sulla combinazione delle confezioni.';

  @override
  String get targetRequired => 'Inserisci una quantità obiettivo.';

  @override
  String get positiveWholeNumberError => 'Inserisci un numero intero positivo.';

  @override
  String maximumValueError(int maximum) {
    return 'Inserisci un valore non superiore a $maximum.';
  }

  @override
  String get packSizesRequired =>
      'Inserisci da una a cinque dimensioni di confezione.';

  @override
  String get malformedPackSizesError => 'Rimuovi le voci vuote tra le virgole.';

  @override
  String get tooManyPackSizesError => 'Inserisci al massimo cinque dimensioni.';

  @override
  String get positivePackSizesError =>
      'Usa numeri interi positivi per le dimensioni.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Ogni dimensione deve essere al massimo $maximum.';
  }

  @override
  String get duplicatePackSizesError => 'Rimuovi le dimensioni duplicate.';
}
