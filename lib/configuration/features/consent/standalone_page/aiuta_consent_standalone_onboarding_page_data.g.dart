// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_onboarding_page_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneOnboardingPageData
    _$AiutaConsentStandaloneOnboardingPageDataFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneOnboardingPageData(
          consents: (json['consents'] as List<dynamic>)
              .map((e) => AiutaConsent.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AiutaConsentStandaloneOnboardingPageDataToJson(
        AiutaConsentStandaloneOnboardingPageData instance) =>
    <String, dynamic>{
      'consents': instance.consents,
    };
