// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingFeature _$AiutaOnboardingFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingFeature(
      howItWorksPage: AiutaOnboardingHowItWorksPageFeature.fromJson(
          json['howItWorksPage'] as Map<String, dynamic>),
      bestResultsPage: json['bestResultsPage'] == null
          ? null
          : AiutaOnboardingBestResultsPageFeature.fromJson(
              json['bestResultsPage'] as Map<String, dynamic>),
      strings: AiutaOnboardingStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      shapes: AiutaOnboardingShapes.fromJson(
          json['shapes'] as Map<String, dynamic>),
      dataProvider: toNull(json['dataProvider']),
    );

Map<String, dynamic> _$AiutaOnboardingFeatureToJson(
    AiutaOnboardingFeature instance) {
  final val = <String, dynamic>{
    'howItWorksPage': instance.howItWorksPage,
    'bestResultsPage': instance.bestResultsPage,
    'strings': instance.strings,
    'shapes': instance.shapes,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dataProvider', toNull(instance.dataProvider));
  return val;
}
