// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneStrings _$AiutaConsentStandaloneStringsFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentStandaloneStrings(
      consentPageTitle: json['consentPageTitle'] as String?,
      consentTitle: json['consentTitle'] as String,
      consentDescriptionHtml: json['consentDescriptionHtml'] as String,
      consentFooterHtml: json['consentFooterHtml'] as String?,
      consentButtonAccept: json['consentButtonAccept'] as String,
      consentButtonReject: json['consentButtonReject'] as String?,
    );

Map<String, dynamic> _$AiutaConsentStandaloneStringsToJson(
        AiutaConsentStandaloneStrings instance) =>
    <String, dynamic>{
      'consentPageTitle': instance.consentPageTitle,
      'consentTitle': instance.consentTitle,
      'consentDescriptionHtml': instance.consentDescriptionHtml,
      'consentFooterHtml': instance.consentFooterHtml,
      'consentButtonAccept': instance.consentButtonAccept,
      'consentButtonReject': instance.consentButtonReject,
    };
