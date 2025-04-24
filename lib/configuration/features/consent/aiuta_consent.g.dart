// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsent _$AiutaConsentFromJson(Map<String, dynamic> json) => AiutaConsent(
      id: json['id'] as String,
      consentHtml: json['consentHtml'] as String,
      isRequired: json['isRequired'] as bool,
    );

Map<String, dynamic> _$AiutaConsentToJson(AiutaConsent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consentHtml': instance.consentHtml,
      'isRequired': instance.isRequired,
    };
