// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingStringsBuiltIn _$AiutaOnboardingStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingStringsBuiltInToJson(
        AiutaOnboardingStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaOnboardingStringsCustom _$AiutaOnboardingStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingStringsCustom(
      onboardingButtonNext: json['onboardingButtonNext'] as String,
      onboardingButtonStart: json['onboardingButtonStart'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingStringsCustomToJson(
        AiutaOnboardingStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingButtonNext': instance.onboardingButtonNext,
      'onboardingButtonStart': instance.onboardingButtonStart,
    };
