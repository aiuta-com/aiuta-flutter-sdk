// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_embedded_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentEmbeddedStringsBuiltIn _$AiutaConsentEmbeddedStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentEmbeddedStringsBuiltIn(
      termsOfServiceUrl: json['termsOfServiceUrl'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentEmbeddedStringsBuiltInToJson(
        AiutaConsentEmbeddedStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'termsOfServiceUrl': instance.termsOfServiceUrl,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaConsentEmbeddedStringsCustom _$AiutaConsentEmbeddedStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentEmbeddedStringsCustom(
      consentHtml: json['consentHtml'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentEmbeddedStringsCustomToJson(
        AiutaConsentEmbeddedStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'consentHtml': instance.consentHtml,
    };
