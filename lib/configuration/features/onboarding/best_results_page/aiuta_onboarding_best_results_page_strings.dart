import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_strings.g.dart';

@JsonSerializable()
class AiutaOnboardingBestResultsPageStrings {
  /// Title for the Best Results page (nullable).
  final String? onboardingBestResultsPageTitle;

  /// Title for the Best Results section.
  final String onboardingBestResultsTitle;

  /// Description for the Best Results section.
  final String onboardingBestResultsDescription;

  AiutaOnboardingBestResultsPageStrings({
    this.onboardingBestResultsPageTitle,
    required this.onboardingBestResultsTitle,
    required this.onboardingBestResultsDescription,
  });

  /// Create a new instance of AiutaOnboardingBestResultsPageStrings from a json map.
  factory AiutaOnboardingBestResultsPageStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageStringsToJson(this);
}
