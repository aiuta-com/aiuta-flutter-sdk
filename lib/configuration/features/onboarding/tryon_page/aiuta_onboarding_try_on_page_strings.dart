import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_try_on_page_strings.g.dart';

@JsonSerializable()
class AiutaOnboardingTryOnPageStrings {
  /// Title for the Try-On page (nullable).
  final String? onboardingTryOnPageTitle;

  /// Title for the Try-On section.
  final String onboardingTryOnTitle;

  /// Description for the Try-On section.
  final String onboardingTryOnDescription;

  AiutaOnboardingTryOnPageStrings({
    this.onboardingTryOnPageTitle,
    required this.onboardingTryOnTitle,
    required this.onboardingTryOnDescription,
  });

  /// Create a new instance of AiutaOnboardingTryOnPageStrings from a json map.
  factory AiutaOnboardingTryOnPageStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingTryOnPageStringsToJson(this);
}
