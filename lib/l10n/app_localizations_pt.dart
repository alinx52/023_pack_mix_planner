// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Planejador de pacotes';

  @override
  String get appDescription =>
      'Encontre a combinação de pacotes que atinge a meta com a menor sobra.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Estilo material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get targetQuantityLabel => 'Quantidade desejada';

  @override
  String get targetQuantityHint => 'Por exemplo, 26';

  @override
  String get packSizesLabel => 'Tamanhos dos pacotes';

  @override
  String get packSizesHint => 'Por exemplo, 6, 10';

  @override
  String get packSizesHelper =>
      'Digite de 1 a 5 tamanhos únicos separados por vírgulas';

  @override
  String get findMix => 'Encontrar combinação';

  @override
  String get reset => 'Redefinir';

  @override
  String get bestMix => 'Melhor combinação';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Total de unidades: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Quantidade desejada: $value';
  }

  @override
  String surplus(int value) {
    return 'Sobra: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Total de pacotes: $value';
  }

  @override
  String get limitationNote =>
      'Considera apenas a quantidade. Não considera preço, peso, dimensões, estoque, substituições, frete, validade nem regras do vendedor para misturar pacotes.';

  @override
  String get targetRequired => 'Digite uma quantidade desejada.';

  @override
  String get positiveWholeNumberError => 'Digite um número inteiro positivo.';

  @override
  String maximumValueError(int maximum) {
    return 'Digite $maximum ou menos.';
  }

  @override
  String get packSizesRequired => 'Digite de um a cinco tamanhos de pacote.';

  @override
  String get malformedPackSizesError =>
      'Remova as entradas vazias entre as vírgulas.';

  @override
  String get tooManyPackSizesError =>
      'Digite no máximo cinco tamanhos de pacote.';

  @override
  String get positivePackSizesError =>
      'Use números inteiros positivos nos tamanhos.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Cada tamanho deve ser de no máximo $maximum.';
  }

  @override
  String get duplicatePackSizesError =>
      'Remova os tamanhos de pacote repetidos.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Planejador de pacotes';

  @override
  String get appDescription =>
      'Encontre a combinação de pacotes que atinge a meta com a menor sobra.';

  @override
  String get languageTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Estilo material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get targetQuantityLabel => 'Quantidade desejada';

  @override
  String get targetQuantityHint => 'Por exemplo, 26';

  @override
  String get packSizesLabel => 'Tamanhos dos pacotes';

  @override
  String get packSizesHint => 'Por exemplo, 6, 10';

  @override
  String get packSizesHelper =>
      'Digite de 1 a 5 tamanhos únicos separados por vírgulas';

  @override
  String get findMix => 'Encontrar combinação';

  @override
  String get reset => 'Redefinir';

  @override
  String get bestMix => 'Melhor combinação';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Total de unidades: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Quantidade desejada: $value';
  }

  @override
  String surplus(int value) {
    return 'Sobra: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Total de pacotes: $value';
  }

  @override
  String get limitationNote =>
      'Considera apenas a quantidade. Não considera preço, peso, dimensões, estoque, substituições, frete, validade nem regras do vendedor para misturar pacotes.';

  @override
  String get targetRequired => 'Digite uma quantidade desejada.';

  @override
  String get positiveWholeNumberError => 'Digite um número inteiro positivo.';

  @override
  String maximumValueError(int maximum) {
    return 'Digite $maximum ou menos.';
  }

  @override
  String get packSizesRequired => 'Digite de um a cinco tamanhos de pacote.';

  @override
  String get malformedPackSizesError =>
      'Remova as entradas vazias entre as vírgulas.';

  @override
  String get tooManyPackSizesError =>
      'Digite no máximo cinco tamanhos de pacote.';

  @override
  String get positivePackSizesError =>
      'Use números inteiros positivos nos tamanhos.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Cada tamanho deve ser de no máximo $maximum.';
  }

  @override
  String get duplicatePackSizesError =>
      'Remova os tamanhos de pacote repetidos.';
}
