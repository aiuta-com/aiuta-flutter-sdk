// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_shoes_mode_onboarding_page_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShoesModeOnboardingPageStringsBuiltIn
    _$AiutaShoesModeOnboardingPageStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeOnboardingPageStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShoesModeOnboardingPageStringsBuiltInToJson(
        AiutaShoesModeOnboardingPageStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShoesModeOnboardingPageStringsCustom
    _$AiutaShoesModeOnboardingPageStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeOnboardingPageStringsCustom(
          onboardingShoesBestResultsPageTitle:
              json['onboardingShoesBestResultsPageTitle'] as String?,
          onboardingShoesBestResultsTitle:
              json['onboardingShoesBestResultsTitle'] as String,
          onboardingShoesBestResultsDescription:
              json['onboardingShoesBestResultsDescription'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShoesModeOnboardingPageStringsCustomToJson(
        AiutaShoesModeOnboardingPageStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingShoesBestResultsPageTitle':
          instance.onboardingShoesBestResultsPageTitle,
      'onboardingShoesBestResultsTitle':
          instance.onboardingShoesBestResultsTitle,
      'onboardingShoesBestResultsDescription':
          instance.onboardingShoesBestResultsDescription,
    };
