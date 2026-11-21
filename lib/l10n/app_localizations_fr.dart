// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Planificateur de lots';

  @override
  String get appDescription =>
      'Trouvez la combinaison de lots qui atteint l’objectif avec le moins d’excédent.';

  @override
  String get languageTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Matériau';

  @override
  String get appearanceFlat => 'Plat';

  @override
  String get appearanceSoft => 'Doux';

  @override
  String get targetQuantityLabel => 'Quantité cible';

  @override
  String get targetQuantityHint => 'Par exemple, 26';

  @override
  String get packSizesLabel => 'Tailles des lots';

  @override
  String get packSizesHint => 'Par exemple, 6, 10';

  @override
  String get packSizesHelper =>
      'Saisissez 1 à 5 tailles uniques séparées par des virgules';

  @override
  String get findMix => 'Trouver la combinaison';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get bestMix => 'Meilleure combinaison';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Unités totales : $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Quantité cible : $value';
  }

  @override
  String surplus(int value) {
    return 'Excédent : $value';
  }

  @override
  String totalPacks(int value) {
    return 'Nombre total de lots : $value';
  }

  @override
  String get limitationNote =>
      'Seule la quantité est prise en compte. Le prix, le poids, les dimensions, le stock, les substitutions, la livraison, la péremption et les règles du vendeur sur le mélange des lots sont exclus.';

  @override
  String get targetRequired => 'Saisissez une quantité cible.';

  @override
  String get positiveWholeNumberError => 'Saisissez un entier positif.';

  @override
  String maximumValueError(int maximum) {
    return 'Saisissez $maximum ou moins.';
  }

  @override
  String get packSizesRequired => 'Saisissez une à cinq tailles de lots.';

  @override
  String get malformedPackSizesError =>
      'Supprimez les entrées vides entre les virgules.';

  @override
  String get tooManyPackSizesError =>
      'Saisissez au maximum cinq tailles de lots.';

  @override
  String get positivePackSizesError =>
      'Utilisez des entiers positifs pour les tailles.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Chaque taille doit être inférieure ou égale à $maximum.';
  }

  @override
  String get duplicatePackSizesError =>
      'Supprimez les tailles de lots en double.';
}
