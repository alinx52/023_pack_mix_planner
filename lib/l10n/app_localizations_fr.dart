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

  @override
  String get helpTooltip => 'Aide et guide';

  @override
  String get helpTitle => 'Guide du planificateur de lots d\'emballage';

  @override
  String get helpProblemSolvedTitle => 'Problème résolu';

  @override
  String get helpProblemSolvedContent =>
      'Trouve la combinaison optimale de formats de paquets fixes pour une quantité cible, en minimisant le surplus puis le nombre de paquets.';

  @override
  String get helpHowToUseTitle => 'Mode d\'emploi';

  @override
  String get helpHowToUseContent =>
      'Entrez la quantité requise et les tailles de paquets séparées par des virgules (ex. 50, 20, 10), puis appuyez sur Trouver.';

  @override
  String get helpReadingResultsTitle => 'Lecture des résultats';

  @override
  String get helpReadingResultsContent =>
      'Affiche le nombre de paquets par format, la quantité totale fournie, le surplus d\'unités et le total de colis.';

  @override
  String get helpExampleTitle => 'Exemple';

  @override
  String get helpExampleContent =>
      'Cible : 70 unités | Formats : 25, 10\nRésultat : 2x paquets de 25 + 2x paquets de 10 = Exactement 70 (0 surplus, 4 paquets au total).';

  @override
  String get helpLimitsTitle => 'Validations et limites';

  @override
  String get helpLimitsContent =>
      'Calculateur d\'optimisation en nombres entiers. Ne tient pas compte des stocks réels, remises commerciales ou frais de port.';

  @override
  String get helpDataAndPrivacyTitle => 'Données locales et publicités';

  @override
  String get helpDataAndPrivacyContent =>
      'Tous les calculs sont effectués localement sans internet. Une bannière AdMob standard est affichée en bas.';
}
