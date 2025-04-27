import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_how_it_works_page_strings.g.dart';

/// This class represents the strings used in the How It Works page of the Aiuta onboarding process.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageStrings {
  /// Title for the How It Works page (nullable).
  final String? onboardingHowItWorksPageTitle;

  /// Title for the How It Works section.
  final String onboardingHowItWorksTitle;

  /// Description for the How It Works section.
  final String onboardingHowItWorksDescription;

  /// Creates an [AiutaOnboardingHowItWorksPageStrings] instance with the given strings.
  AiutaOnboardingHowItWorksPageStrings({
    this.onboardingHowItWorksPageTitle,
    required this.onboardingHowItWorksTitle,
    required this.onboardingHowItWorksDescription,
  });

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageStringsToJson(this);
}
