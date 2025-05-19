import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_strings.g.dart';

/// This class represents the strings used in the Best Results page of the onboarding process.
@JsonSerializable()
class AiutaOnboardingBestResultsPageStrings {
  /// Title for the Best Results page (nullable).
  final String? onboardingBestResultsPageTitle;

  /// Title for the Best Results section.
  final String onboardingBestResultsTitle;

  /// Description for the Best Results section.
  final String onboardingBestResultsDescription;

  /// Creates an [AiutaOnboardingBestResultsPageStrings] with the given strings.
  AiutaOnboardingBestResultsPageStrings({
    this.onboardingBestResultsPageTitle,
    required this.onboardingBestResultsTitle,
    required this.onboardingBestResultsDescription,
  });

  // Internal json staff
  factory AiutaOnboardingBestResultsPageStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageStringsToJson(this);
}
