import 'package:flutter/foundation.dart';

/// This class provides the data needed for the onboarding process in the Aiuta app.
class AiutaOnboardingDataProvider {
  /// A [ValueListenable] bool that indicates whether the onboarding process
  /// has been completed and it should not be shown again.
  final ValueListenable<bool> isOnboardingCompleted;

  /// A callback function that is called when the onboarding process is completed.
  final void Function() completeOnboarding;

  /// Creates an [AiutaOnboardingDataProvider] with the listenable [isOnboardingCompleted]
  /// indicating whether the onboarding process has been completed and the
  /// callback [completeOnboarding] that is called when the onboarding
  /// process is completed.
  AiutaOnboardingDataProvider({
    required this.isOnboardingCompleted,
    required this.completeOnboarding,
  });
}
