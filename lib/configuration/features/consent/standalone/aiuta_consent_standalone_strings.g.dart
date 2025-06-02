// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneStringsBuiltIn
    _$AiutaConsentStandaloneStringsBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaConsentStandaloneStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneStringsBuiltInToJson(
        AiutaConsentStandaloneStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaConsentStandaloneStringsCustom
    _$AiutaConsentStandaloneStringsCustomFromJson(Map<String, dynamic> json) =>
        AiutaConsentStandaloneStringsCustom(
          consentPageTitle: json['consentPageTitle'] as String?,
          consentTitle: json['consentTitle'] as String,
          consentDescriptionHtml: json['consentDescriptionHtml'] as String,
          consentFooterHtml: json['consentFooterHtml'] as String?,
          consentButtonAccept: json['consentButtonAccept'] as String,
          consentButtonReject: json['consentButtonReject'] as String?,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneStringsCustomToJson(
        AiutaConsentStandaloneStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'consentPageTitle': instance.consentPageTitle,
      'consentTitle': instance.consentTitle,
      'consentDescriptionHtml': instance.consentDescriptionHtml,
      'consentFooterHtml': instance.consentFooterHtml,
      'consentButtonAccept': instance.consentButtonAccept,
      'consentButtonReject': instance.consentButtonReject,
    };
