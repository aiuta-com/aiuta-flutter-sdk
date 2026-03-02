// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
