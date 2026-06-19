// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_how_it_works_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingHowItWorksPageImagesBuiltIn
    _$AiutaOnboardingHowItWorksPageImagesBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingHowItWorksPageImagesBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageImagesBuiltInToJson(
        AiutaOnboardingHowItWorksPageImagesBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaOnboardingHowItWorksPageImagesCustom
    _$AiutaOnboardingHowItWorksPageImagesCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingHowItWorksPageImagesCustom(
          onboardingHowItWorksItem: AiutaMedia.fromJson(
              json['onboardingHowItWorksItem'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageImagesCustomToJson(
        AiutaOnboardingHowItWorksPageImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingHowItWorksItem': instance.onboardingHowItWorksItem,
    };
