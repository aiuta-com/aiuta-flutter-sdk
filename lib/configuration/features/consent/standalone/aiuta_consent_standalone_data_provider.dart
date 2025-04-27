import 'package:flutter/foundation.dart';

/// Data provider for the Aiuta consent standalone page.
class AiutaConsentStandaloneDataProvider {
  /// List of consents identifiers already obtained from the user.
  ///
  /// SDK will match the identifiers with the ones provided in the [AiutaConsentStandaloneData],
  /// and will show the consent screen only if there are missing required consents.
  final ValueListenable<List<String>> obtainedConsentsIds;

  /// Callback when the user has given consents and pressed the "Continue" button.
  /// App should store the consents identifiers and provide them in the [obtainedConsentsIds]
  /// property in the future. Otherwise, the SDK will show the consent screen again on next tryOn session.
  ///
  /// [List] of consent identifiers that the user has given will be passed to the callback.
  final void Function(List<String>) obtainConsentsIds;

  /// Creates an [AiutaConsentStandaloneDataProvider] with the listenable
  /// [obtainedConsentsIds] list with already obtained consents identifiers and
  /// [obtainConsentsIds] callback to be called when the user has given consents.
  AiutaConsentStandaloneDataProvider({
    required this.obtainedConsentsIds,
    required this.obtainConsentsIds,
  });
}
