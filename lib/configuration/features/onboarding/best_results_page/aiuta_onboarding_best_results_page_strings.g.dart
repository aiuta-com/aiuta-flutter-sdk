// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageStringsBuiltIn
    _$AiutaOnboardingBestResultsPageStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingBestResultsPageStringsBuiltInToJson(
        AiutaOnboardingBestResultsPageStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaOnboardingBestResultsPageStringsCustom
    _$AiutaOnboardingBestResultsPageStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageStringsCustom(
          onboardingBestResultsPageTitle:
              json['onboardingBestResultsPageTitle'] as String?,
          onboardingBestResultsTitle:
              json['onboardingBestResultsTitle'] as String,
          onboardingBestResultsDescription:
              json['onboardingBestResultsDescription'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingBestResultsPageStringsCustomToJson(
        AiutaOnboardingBestResultsPageStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingBestResultsPageTitle': instance.onboardingBestResultsPageTitle,
      'onboardingBestResultsTitle': instance.onboardingBestResultsTitle,
      'onboardingBestResultsDescription':
          instance.onboardingBestResultsDescription,
    };
