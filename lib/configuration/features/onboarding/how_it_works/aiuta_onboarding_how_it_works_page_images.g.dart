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
          onboardingHowItWorksItems: (json['onboardingHowItWorksItems']
                  as List<dynamic>)
              .map((e) =>
                  OnboardingHowItWorksItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageImagesCustomToJson(
        AiutaOnboardingHowItWorksPageImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingHowItWorksItems': instance.onboardingHowItWorksItems,
    };

OnboardingHowItWorksItem _$OnboardingHowItWorksItemFromJson(
        Map<String, dynamic> json) =>
    OnboardingHowItWorksItem(
      itemPhoto: json['itemPhoto'] as String,
      itemPreview: json['itemPreview'] as String,
    );

Map<String, dynamic> _$OnboardingHowItWorksItemToJson(
        OnboardingHowItWorksItem instance) =>
    <String, dynamic>{
      'itemPhoto': instance.itemPhoto,
      'itemPreview': instance.itemPreview,
    };
