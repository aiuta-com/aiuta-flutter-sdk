// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneData _$AiutaConsentStandaloneDataFromJson(
        Map<String, dynamic> json) =>
    AiutaConsentStandaloneData(
      consents: (json['consents'] as List<dynamic>)
          .map((e) => AiutaConsent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AiutaConsentStandaloneDataToJson(
        AiutaConsentStandaloneData instance) =>
    <String, dynamic>{
      'consents': instance.consents,
    };
