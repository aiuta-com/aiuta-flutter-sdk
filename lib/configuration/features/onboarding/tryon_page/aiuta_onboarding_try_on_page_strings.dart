import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_try_on_page_strings.g.dart';

/// This class represents the strings used in the Try-On page of the Aiuta onboarding process.
@JsonSerializable()
class AiutaOnboardingTryOnPageStrings {
  /// Title for the Try-On page (nullable).
  final String? onboardingTryOnPageTitle;

  /// Title for the Try-On section.
  final String onboardingTryOnTitle;

  /// Description for the Try-On section.
  final String onboardingTryOnDescription;

  /// Creates an [AiutaOnboardingTryOnPageStrings] instance with the given strings.
  AiutaOnboardingTryOnPageStrings({
    this.onboardingTryOnPageTitle,
    required this.onboardingTryOnTitle,
    required this.onboardingTryOnDescription,
  });

  // Internal json staff
  factory AiutaOnboardingTryOnPageStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingTryOnPageStringsToJson(this);
}
