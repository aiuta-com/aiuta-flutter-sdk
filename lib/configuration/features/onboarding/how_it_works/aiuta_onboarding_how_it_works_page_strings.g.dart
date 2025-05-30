// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_how_it_works_page_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingHowItWorksPageStringsBuiltIn
    _$AiutaOnboardingHowItWorksPageStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingHowItWorksPageStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageStringsBuiltInToJson(
        AiutaOnboardingHowItWorksPageStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaOnboardingHowItWorksPageStringsCustom
    _$AiutaOnboardingHowItWorksPageStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingHowItWorksPageStringsCustom(
          onboardingHowItWorksPageTitle:
              json['onboardingHowItWorksPageTitle'] as String?,
          onboardingHowItWorksTitle:
              json['onboardingHowItWorksTitle'] as String,
          onboardingHowItWorksDescription:
              json['onboardingHowItWorksDescription'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageStringsCustomToJson(
        AiutaOnboardingHowItWorksPageStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'onboardingHowItWorksPageTitle': instance.onboardingHowItWorksPageTitle,
      'onboardingHowItWorksTitle': instance.onboardingHowItWorksTitle,
      'onboardingHowItWorksDescription':
          instance.onboardingHowItWorksDescription,
    };
