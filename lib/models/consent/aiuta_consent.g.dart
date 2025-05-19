// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsent _$AiutaConsentFromJson(Map<String, dynamic> json) => AiutaConsent(
      id: json['id'] as String,
      type: $enumDecode(_$AiutaConsentTypeEnumMap, json['type']),
      html: json['html'] as String,
    );

Map<String, dynamic> _$AiutaConsentToJson(AiutaConsent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$AiutaConsentTypeEnumMap[instance.type]!,
      'html': instance.html,
    };

const _$AiutaConsentTypeEnumMap = {
  AiutaConsentType.implicitWithoutCheckbox: 'implicitWithoutCheckbox',
  AiutaConsentType.implicitWithCheckbox: 'implicitWithCheckbox',
  AiutaConsentType.explicitRequired: 'explicitRequired',
  AiutaConsentType.explicitOptional: 'explicitOptional',
};
