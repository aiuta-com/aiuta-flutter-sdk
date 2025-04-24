import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_onboarding_page_data.g.dart';

@JsonSerializable()
class AiutaConsentStandaloneOnboardingPageData {
  /// List of consents.
  final List<AiutaConsent> consents;

  AiutaConsentStandaloneOnboardingPageData({
    required this.consents,
  });

  /// Factory method to create AiutaConsentStandaloneOnboardingPageData from json.
  factory AiutaConsentStandaloneOnboardingPageData.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneOnboardingPageDataFromJson(json);

  /// Method to convert AiutaConsentStandaloneOnboardingPageData to json.
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneOnboardingPageDataToJson(this);
}
