// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentBuiltInWithOnboardingPageFeature
    _$AiutaConsentBuiltInWithOnboardingPageFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentBuiltInWithOnboardingPageFeature(
          strings: AiutaConsentBuiltInWithOnboardingPageStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaConsentBuiltInWithOnboardingPageFeatureToJson(
        AiutaConsentBuiltInWithOnboardingPageFeature instance) =>
    <String, dynamic>{
      'strings': instance.strings,
    };

AiutaConsentStandaloneOnboardingPageFeature
    _$AiutaConsentStandaloneOnboardingPageFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneOnboardingPageFeature(
          strings: AiutaConsentStandaloneOnboardingPageStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          data: AiutaConsentStandaloneOnboardingPageData.fromJson(
              json['data'] as Map<String, dynamic>),
          dataProvider: toNull(json['dataProvider']),
        );

Map<String, dynamic> _$AiutaConsentStandaloneOnboardingPageFeatureToJson(
    AiutaConsentStandaloneOnboardingPageFeature instance) {
  final val = <String, dynamic>{
    'strings': instance.strings,
    'data': instance.data,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dataProvider', toNull(instance.dataProvider));
  return val;
}
