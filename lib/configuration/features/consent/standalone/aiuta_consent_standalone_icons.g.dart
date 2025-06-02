// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneIconsBuiltIn _$AiutaConsentStandaloneIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentStandaloneIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneIconsBuiltInToJson(
        AiutaConsentStandaloneIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaConsentStandaloneIconsCustom _$AiutaConsentStandaloneIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentStandaloneIconsCustom(
      consentTitle24:
          AiutaIcon.fromJson(json['consentTitle24'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneIconsCustomToJson(
        AiutaConsentStandaloneIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'consentTitle24': instance.consentTitle24,
    };
