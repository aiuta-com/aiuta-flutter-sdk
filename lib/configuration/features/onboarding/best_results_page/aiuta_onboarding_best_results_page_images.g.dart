// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageImagesCustom
    _$AiutaOnboardingBestResultsPageImagesCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageImagesCustom(
          onboardingBestResultsItem: AiutaMedia.fromJson(
              json['onboardingBestResultsItem'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingBestResultsPageImagesCustomToJson(
        AiutaOnboardingBestResultsPageImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingBestResultsItem': instance.onboardingBestResultsItem,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
