import 'package:flutter/material.dart';

import 'design_system.dart';
import 'home_page.dart';
import 'l10n/app_localizations.dart';
import 'locale_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _selectableLocales = <Locale>[
    Locale('en'),
    Locale('ko'),
    Locale('ja'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
    Locale('pt', 'BR'),
    Locale('it'),
    Locale('nl'),
    Locale('ru'),
    Locale('ar'),
    Locale('hi'),
    Locale('id'),
    Locale('vi'),
  ];

  Locale _locale = const Locale('en');
  String _designStyle = appDesignStyle;

  @override
  void initState() {
    super.initState();
    _restoreLocale();
  }

  Future<void> _restoreLocale() async {
    final savedLocale = await AppLocalePreferences.load();
    if (!mounted || savedLocale == null || !_isSupportedLocale(savedLocale)) {
      return;
    }
    setState(() => _locale = savedLocale);
  }

  bool _isSupportedLocale(Locale locale) {
    return _selectableLocales.any(
      (supported) => supported.toLanguageTag() == locale.toLanguageTag(),
    );
  }

  void _changeLocale(Locale locale) {
    if (locale == _locale) {
      return;
    }
    setState(() => _locale = locale);
    AppLocalePreferences.save(locale);
  }

  void _changeDesignStyle(String style) {
    setState(() => _designStyle = style);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: buildAppTheme(Brightness.light, styleOverride: _designStyle),
      darkTheme: buildAppTheme(Brightness.dark, styleOverride: _designStyle),
      themeMode: appThemeMode,
      home: HomePage(
        locale: _locale,
        onLocaleChanged: _changeLocale,
        designStyle: _designStyle,
        onDesignStyleChanged: _changeDesignStyle,
      ),
    );
  }
}
