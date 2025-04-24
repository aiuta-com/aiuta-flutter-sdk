import 'dart:async';

class AiutaConsentStandaloneOnboardingPageDataProvider {
  /// Stream of obtained consent IDs.
  final Stream<List<String>> obtainedConsentsIds;

  /// Callback to obtain consent.
  final void Function(List<String>) obtainConsentIds;

  AiutaConsentStandaloneOnboardingPageDataProvider({
    required this.obtainedConsentsIds,
    required this.obtainConsentIds,
  });
}
