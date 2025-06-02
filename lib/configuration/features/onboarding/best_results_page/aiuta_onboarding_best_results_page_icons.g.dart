// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageIconsCustom
    _$AiutaOnboardingBestResultsPageIconsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageIconsCustom(
          onboardingBestResultsGood24: AiutaIcon.fromJson(
              json['onboardingBestResultsGood24'] as Map<String, dynamic>),
          onboardingBestResultsBad24: AiutaIcon.fromJson(
              json['onboardingBestResultsBad24'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingBestResultsPageIconsCustomToJson(
        AiutaOnboardingBestResultsPageIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingBestResultsGood24': instance.onboardingBestResultsGood24,
      'onboardingBestResultsBad24': instance.onboardingBestResultsBad24,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
