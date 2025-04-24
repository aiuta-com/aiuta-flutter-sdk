import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_toggles.g.dart';

@JsonSerializable()
class AiutaOnboardingBestResultsPageToggles {
  /// Toggle to reduce shadows in the Best Results page.
  final bool reduceOnboardingBestResultsShadows;

  AiutaOnboardingBestResultsPageToggles({
    required this.reduceOnboardingBestResultsShadows,
  });

  /// Create a new instance of AiutaOnboardingBestResultsPageToggles from a json map.
  factory AiutaOnboardingBestResultsPageToggles.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageTogglesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageTogglesToJson(this);
}
