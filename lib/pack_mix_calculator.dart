class PackMixResult {
  const PackMixResult({
    required this.packSizes,
    required this.counts,
    required this.totalUnits,
    required this.target,
  });

  final List<int> packSizes;
  final List<int> counts;
  final int totalUnits;
  final int target;

  int get surplus => totalUnits - target;
  int get totalPacks => counts.fold(0, (sum, count) => sum + count);
}

class PackMixCalculator {
  const PackMixCalculator._();

  /// Finds the exact deterministic optimum using integer dynamic programming.
  /// Pack sizes must be unique and sorted from largest to smallest.
  static PackMixResult calculate(int target, List<int> packSizes) {
    // Repeating the smallest size always reaches a total within this bound.
    final maximumTotal = target + packSizes.last - 1;
    final best = List<List<int>?>.filled(maximumTotal + 1, null);
    best[0] = List<int>.filled(packSizes.length, 0);

    for (var total = 1; total <= maximumTotal; total++) {
      List<int>? winner;
      for (var index = 0; index < packSizes.length; index++) {
        final previousTotal = total - packSizes[index];
        if (previousTotal < 0 || best[previousTotal] == null) {
          continue;
        }
        final candidate = List<int>.of(best[previousTotal]!);
        candidate[index]++;
        if (winner == null || _isBetter(candidate, winner)) {
          winner = candidate;
        }
      }
      best[total] = winner;
    }

    for (var total = target; total <= maximumTotal; total++) {
      final counts = best[total];
      if (counts != null) {
        return PackMixResult(
          packSizes: List<int>.unmodifiable(packSizes),
          counts: List<int>.unmodifiable(counts),
          totalUnits: total,
          target: target,
        );
      }
    }
    throw StateError('A positive pack size always yields a result.');
  }

  static bool _isBetter(List<int> candidate, List<int> current) {
    final candidatePacks = candidate.fold(0, (sum, count) => sum + count);
    final currentPacks = current.fold(0, (sum, count) => sum + count);
    if (candidatePacks != currentPacks) {
      return candidatePacks < currentPacks;
    }
    for (var index = 0; index < candidate.length; index++) {
      if (candidate[index] != current[index]) {
        return candidate[index] > current[index];
      }
    }
    return false;
  }
}
