import 'dart:async';
import 'help_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';
import 'pack_mix_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _maximumValue = 100000;
  final _targetController = TextEditingController();
  final _packSizesController = TextEditingController();
  String? _targetError;
  String? _packSizesError;
  PackMixResult? _result;

  @override
  void dispose() {
    _targetController.dispose();
    _packSizesController.dispose();
    super.dispose();
  }

  void _findMix() {
    final localizations = AppLocalizations.of(context);
    final targetValidation = _parseTarget(localizations);
    final packValidation = _parsePackSizes(localizations);
    setState(() {
      _targetError = targetValidation.error;
      _packSizesError = packValidation.error;
      if (targetValidation.value != null && packValidation.value != null) {
        final sizes = packValidation.value!;
        _packSizesController.text = sizes.join(', ');
        _result = PackMixCalculator.calculate(targetValidation.value!, sizes);
      }
    });
  }

  _Validation<int> _parseTarget(AppLocalizations localizations) {
    final input = _targetController.text.trim();
    if (input.isEmpty) {
      return _Validation(error: localizations.targetRequired);
    }
    if (!RegExp(r'^\d+$').hasMatch(input)) {
      return _Validation(error: localizations.positiveWholeNumberError);
    }
    final value = int.tryParse(input);
    if (value == null) {
      return _Validation(error: localizations.maximumValueError(_maximumValue));
    }
    if (value == 0) {
      return _Validation(error: localizations.positiveWholeNumberError);
    }
    if (value > _maximumValue) {
      return _Validation(error: localizations.maximumValueError(_maximumValue));
    }
    return _Validation(value: value);
  }

  _Validation<List<int>> _parsePackSizes(AppLocalizations localizations) {
    final input = _packSizesController.text.trim();
    if (input.isEmpty) {
      return _Validation(error: localizations.packSizesRequired);
    }
    final parts = input.split(',');
    if (parts.any((part) => part.trim().isEmpty)) {
      return _Validation(error: localizations.malformedPackSizesError);
    }
    if (parts.length > 5) {
      return _Validation(error: localizations.tooManyPackSizesError);
    }
    final sizes = <int>[];
    for (final part in parts) {
      final valueText = part.trim();
      if (!RegExp(r'^\d+$').hasMatch(valueText)) {
        return _Validation(error: localizations.positivePackSizesError);
      }
      final value = int.tryParse(valueText);
      if (value == null) {
        return _Validation(
          error: localizations.maximumPackSizeError(_maximumValue),
        );
      }
      if (value == 0) {
        return _Validation(error: localizations.positivePackSizesError);
      }
      if (value > _maximumValue) {
        return _Validation(
          error: localizations.maximumPackSizeError(_maximumValue),
        );
      }
      if (sizes.contains(value)) {
        return _Validation(error: localizations.duplicatePackSizesError);
      }
      sizes.add(value);
    }
    sizes.sort((a, b) => b.compareTo(a));
    return _Validation(value: sizes);
  }

  void _reset() {
    setState(() {
      _targetController.clear();
      _packSizesController.clear();
      _targetError = null;
      _packSizesError = null;
      _result = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.appTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: localizations.languageTooltip,
          ),
        ],
      ),
      bottomNavigationBar: const AdBanner(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          localizations.appDescription,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          key: const ValueKey('target-input'),
                          controller: _targetController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(12),
                          ],
                          decoration: InputDecoration(
                            labelText: localizations.targetQuantityLabel,
                            hintText: localizations.targetQuantityHint,
                            errorText: _targetError,
                            prefixIcon: const Icon(Icons.flag_outlined),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          key: const ValueKey('pack-sizes-input'),
                          controller: _packSizesController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          onSubmitted: (_) => _findMix(),
                          decoration: InputDecoration(
                            labelText: localizations.packSizesLabel,
                            hintText: localizations.packSizesHint,
                            helperText: localizations.packSizesHelper,
                            errorText: _packSizesError,
                            prefixIcon: const Icon(Icons.inventory_2_outlined),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: FilledButton.icon(
                                key: const ValueKey('find-mix'),
                                onPressed: _findMix,
                                icon: const Icon(Icons.calculate_outlined),
                                label: Text(localizations.findMix),
                              ),
                            ),
                            const SizedBox(width: 8),
                            OutlinedButton(
                              key: const ValueKey('reset'),
                              onPressed: _reset,
                              child: Text(localizations.reset),
                            ),
                          ],
                        ),
                        if (_result case final result?) ...[
                          const SizedBox(height: 16),
                          _ResultPanel(result: result),
                        ],
                        const SizedBox(height: 16),
                        Text(
                          localizations.limitationNote,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _Footer(
              designStyle: widget.designStyle,
              onDesignStyleChanged: widget.onDesignStyleChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultPanel extends StatelessWidget {
  const _ResultPanel({required this.result});

  final PackMixResult result;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final usedIndexes = <int>[
      for (var index = result.packSizes.length - 1; index >= 0; index--)
        if (result.counts[index] > 0) index,
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  localizations.bestMix,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 12),
            for (final index in usedIndexes)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  localizations.mixLine(
                    result.counts[index],
                    result.packSizes[index],
                    result.counts[index] * result.packSizes[index],
                  ),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            const Divider(height: 20),
            _MetricLine(text: localizations.totalUnits(result.totalUnits)),
            _MetricLine(
              text: localizations.targetQuantityResult(result.target),
            ),
            _MetricLine(text: localizations.surplus(result.surplus)),
            _MetricLine(text: localizations.totalPacks(result.totalPacks)),
          ],
        ),
      ),
    );
  }
}

class _MetricLine extends StatelessWidget {
  const _MetricLine({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    required this.designStyle,
    required this.onDesignStyleChanged,
  });
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppAppearanceMenu(
              selectedStyle: designStyle,
              onSelected: onDesignStyleChanged,
              tooltip: localizations.appearanceTooltip,
              materialLabel: localizations.appearanceMaterial,
              flatLabel: localizations.appearanceFlat,
              softLabel: localizations.appearanceSoft,
            ),
            const SizedBox(width: 4),
            IconButton(
                    icon: const Icon(Icons.help_outline),
                    tooltip: AppLocalizations.of(context).helpTooltip,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => const HelpPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 8),

            Flexible(
              child: TextButton.icon(
                onPressed: () {
                  unawaited(
                    launchUrl(
                      Uri.parse(privacyPolicyUrl),
                      mode: LaunchMode.externalApplication,
                    ),
                  );
                },
                icon: const Icon(Icons.privacy_tip_outlined, size: 18),
                label: Text(
                  localizations.privacyPolicy,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Validation<T> {
  const _Validation({this.value, this.error});
  final T? value;
  final String? error;
}
