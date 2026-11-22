// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Planificador de paquetes';

  @override
  String get appDescription =>
      'Encuentra la combinación de paquetes que alcanza el objetivo con el menor excedente.';

  @override
  String get languageTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Diseño material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get targetQuantityLabel => 'Cantidad objetivo';

  @override
  String get targetQuantityHint => 'Por ejemplo, 26';

  @override
  String get packSizesLabel => 'Tamaños de paquete';

  @override
  String get packSizesHint => 'Por ejemplo, 6, 10';

  @override
  String get packSizesHelper =>
      'Introduce de 1 a 5 tamaños únicos separados por comas';

  @override
  String get findMix => 'Buscar combinación';

  @override
  String get reset => 'Restablecer';

  @override
  String get bestMix => 'Mejor combinación';

  @override
  String mixLine(int count, int size, int units) {
    return '$count × $size = $units';
  }

  @override
  String totalUnits(int value) {
    return 'Unidades totales: $value';
  }

  @override
  String targetQuantityResult(int value) {
    return 'Cantidad objetivo: $value';
  }

  @override
  String surplus(int value) {
    return 'Excedente: $value';
  }

  @override
  String totalPacks(int value) {
    return 'Paquetes totales: $value';
  }

  @override
  String get limitationNote =>
      'Solo considera la cantidad. No tiene en cuenta precio, peso, dimensiones, existencias, sustituciones, envío, caducidad ni reglas del vendedor para mezclar paquetes.';

  @override
  String get targetRequired => 'Introduce una cantidad objetivo.';

  @override
  String get positiveWholeNumberError => 'Introduce un número entero positivo.';

  @override
  String maximumValueError(int maximum) {
    return 'Introduce $maximum o menos.';
  }

  @override
  String get packSizesRequired =>
      'Introduce de uno a cinco tamaños de paquete.';

  @override
  String get malformedPackSizesError =>
      'Elimina las entradas vacías entre comas.';

  @override
  String get tooManyPackSizesError =>
      'Introduce como máximo cinco tamaños de paquete.';

  @override
  String get positivePackSizesError =>
      'Usa números enteros positivos para los tamaños.';

  @override
  String maximumPackSizeError(int maximum) {
    return 'Cada tamaño debe ser de $maximum o menos.';
  }

  @override
  String get duplicatePackSizesError =>
      'Elimina los tamaños de paquete duplicados.';

  @override
  String get helpTooltip => 'Ayuda y guía';

  @override
  String get helpTitle => 'Guía del planificador de mezcla de paquetes';

  @override
  String get helpProblemSolvedTitle => 'Problema que resuelve';

  @override
  String get helpProblemSolvedContent =>
      'Encuentra la combinación óptima de paquetes fijos para alcanzar una cantidad objetivo, minimizando el sobrante y el número de paquetes.';

  @override
  String get helpHowToUseTitle => 'Cómo usar';

  @override
  String get helpHowToUseContent =>
      'Introduce la cantidad deseada y los tamaños de paquete disponibles separados por comas (ej. 50, 20, 10), y pulsa Buscar combinación.';

  @override
  String get helpReadingResultsTitle => 'Interpretación de resultados';

  @override
  String get helpReadingResultsContent =>
      'Muestra el desglose de paquetes por tamaño, cantidad total suministrada, unidades sobrantes y número total de bultos.';

  @override
  String get helpExampleTitle => 'Ejemplo';

  @override
  String get helpExampleContent =>
      'Objetivo: 70 unidades | Tamaños: 25, 10\nResultado: 2x paquete de 25 + 2x paquete de 10 = Exactamente 70 (0 sobrante, 4 paquetes).';

  @override
  String get helpLimitsTitle => 'Validaciones y límites';

  @override
  String get helpLimitsContent =>
      'Calculadora de optimización de enteros. No contempla stock real del proveedor, descuentos por volumen ni gastos de envío.';

  @override
  String get helpDataAndPrivacyTitle => 'Datos locales y anuncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todos los cálculos se realizan localmente sin comunicación por internet. Se muestra un banner estándar de AdMob.';
}
