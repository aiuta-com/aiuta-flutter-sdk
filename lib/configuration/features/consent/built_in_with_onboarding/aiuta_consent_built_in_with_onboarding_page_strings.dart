import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_built_in_with_onboarding_page_strings.g.dart';

@JsonSerializable()
class AiutaConsentBuiltInWithOnboardingPageStrings {
  /// HTML content for the consent.
  final String consentHtml;

  AiutaConsentBuiltInWithOnboardingPageStrings({
    required this.consentHtml,
  });

  /// Factory method to create AiutaConsentBuiltInWithOnboardingPageStrings from json.
  factory AiutaConsentBuiltInWithOnboardingPageStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentBuiltInWithOnboardingPageStringsFromJson(json);

  /// Method to convert AiutaConsentBuiltInWithOnboardingPageStrings to json.
  Map<String, dynamic> toJson() =>
      _$AiutaConsentBuiltInWithOnboardingPageStringsToJson(this);
}

