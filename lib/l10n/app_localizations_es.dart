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
}
