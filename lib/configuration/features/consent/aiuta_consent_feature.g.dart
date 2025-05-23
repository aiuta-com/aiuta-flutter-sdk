// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentEmbeddedIntoOnboardingFeature
    _$AiutaConsentEmbeddedIntoOnboardingFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentEmbeddedIntoOnboardingFeature(
          strings: AiutaConsentEmbeddedStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
        )..mode = $enumDecode(_$AiutaConsentModeEnumMap, json['mode']);

Map<String, dynamic> _$AiutaConsentEmbeddedIntoOnboardingFeatureToJson(
        AiutaConsentEmbeddedIntoOnboardingFeature instance) =>
    <String, dynamic>{
      'mode': _$AiutaConsentModeEnumMap[instance.mode]!,
      'strings': instance.strings,
    };

const _$AiutaConsentModeEnumMap = {
  AiutaConsentMode.embeddedIntoOnboarding: 'embeddedIntoOnboarding',
  AiutaConsentMode.standaloneOnboardingPage: 'standaloneOnboardingPage',
  AiutaConsentMode.standaloneImagePickerPage: 'standaloneImagePickerPage',
};

AiutaConsentStandaloneOnboardingPageFeature
    _$AiutaConsentStandaloneOnboardingPageFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneOnboardingPageFeature(
          strings: AiutaConsentStandaloneStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          icons: AiutaConsentStandaloneIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          styles: AiutaConsentStandaloneStyles.fromJson(
              json['styles'] as Map<String, dynamic>),
          data: AiutaConsentStandaloneData.fromJson(
              json['data'] as Map<String, dynamic>),
          dataProvider: AiutaConsentStandaloneDataProvider.fromJson(
              json['dataProvider'] as Map<String, dynamic>),
        )..mode = $enumDecode(_$AiutaConsentModeEnumMap, json['mode']);

Map<String, dynamic> _$AiutaConsentStandaloneOnboardingPageFeatureToJson(
        AiutaConsentStandaloneOnboardingPageFeature instance) =>
    <String, dynamic>{
      'mode': _$AiutaConsentModeEnumMap[instance.mode]!,
      'strings': instance.strings,
      'icons': instance.icons,
      'styles': instance.styles,
      'data': instance.data,
      'dataProvider': instance.dataProvider,
    };

AiutaConsentStandaloneImagePickerPageFeature
    _$AiutaConsentStandaloneImagePickerPageFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneImagePickerPageFeature(
          strings: AiutaConsentStandaloneStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          icons: AiutaConsentStandaloneIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          styles: AiutaConsentStandaloneStyles.fromJson(
              json['styles'] as Map<String, dynamic>),
          data: AiutaConsentStandaloneData.fromJson(
              json['data'] as Map<String, dynamic>),
          dataProvider: AiutaConsentStandaloneDataProvider.fromJson(
              json['dataProvider'] as Map<String, dynamic>),
        )..mode = $enumDecode(_$AiutaConsentModeEnumMap, json['mode']);

Map<String, dynamic> _$AiutaConsentStandaloneImagePickerPageFeatureToJson(
        AiutaConsentStandaloneImagePickerPageFeature instance) =>
    <String, dynamic>{
      'mode': _$AiutaConsentModeEnumMap[instance.mode]!,
      'strings': instance.strings,
      'icons': instance.icons,
      'styles': instance.styles,
      'data': instance.data,
      'dataProvider': instance.dataProvider,
    };
