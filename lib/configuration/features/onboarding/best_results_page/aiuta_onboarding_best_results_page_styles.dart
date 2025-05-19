import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_styles.g.dart';

/// Configuration for the Best Results page styles.
@JsonSerializable()
class AiutaOnboardingBestResultsPageStyles {
  /// Toggle to reduce shadows in the Best Results page.
  final bool reduceOnboardingBestResultsShadows;

  /// Creates an [AiutaOnboardingBestResultsPageStyles] with the
  /// [reduceOnboardingBestResultsShadows] toggle to reduce shadows in the
  /// Best Results page.
  AiutaOnboardingBestResultsPageStyles({
    required this.reduceOnboardingBestResultsShadows,
  });

  // Internal json staff
  factory AiutaOnboardingBestResultsPageStyles.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageStylesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageStylesToJson(this);
}
