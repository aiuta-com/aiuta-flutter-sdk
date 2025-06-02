// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageImagesCustom
    _$AiutaOnboardingBestResultsPageImagesCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageImagesCustom(
          onboardingBestResultsGood:
              (json['onboardingBestResultsGood'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          onboardingBestResultsBad:
              (json['onboardingBestResultsBad'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingBestResultsPageImagesCustomToJson(
        AiutaOnboardingBestResultsPageImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingBestResultsGood': instance.onboardingBestResultsGood,
      'onboardingBestResultsBad': instance.onboardingBestResultsBad,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
