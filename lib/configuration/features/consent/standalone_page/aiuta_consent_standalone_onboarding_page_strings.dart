import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_onboarding_page_strings.g.dart';

@JsonSerializable()
class AiutaConsentStandaloneOnboardingPageStrings {
  /// Title for the consent page (nullable).
  final String? consentPageTitle;

  /// Title for the consent section.
  final String consentTitle;

  /// HTML description for the consent section.
  final String consentDescriptionHtml;

  /// HTML footer for the consent section (nullable).
  final String? consentFooterHtml;

  AiutaConsentStandaloneOnboardingPageStrings({
    this.consentPageTitle,
    required this.consentTitle,
    required this.consentDescriptionHtml,
    this.consentFooterHtml,
  });

  /// Factory method to create AiutaConsentStandaloneOnboardingPageStrings from json.
  factory AiutaConsentStandaloneOnboardingPageStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneOnboardingPageStringsFromJson(json);

  /// Method to convert AiutaConsentStandaloneOnboardingPageStrings to json.
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneOnboardingPageStringsToJson(this);
}
