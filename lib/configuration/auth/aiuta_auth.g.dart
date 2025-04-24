// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaApiKeyAuth _$AiutaApiKeyAuthFromJson(Map<String, dynamic> json) =>
    AiutaApiKeyAuth(
      apiKey: json['apiKey'] as String,
    )..mode = $enumDecode(_$AiutaAuthModeEnumMap, json['mode']);

Map<String, dynamic> _$AiutaApiKeyAuthToJson(AiutaApiKeyAuth instance) =>
    <String, dynamic>{
      'mode': _$AiutaAuthModeEnumMap[instance.mode]!,
      'apiKey': instance.apiKey,
    };

const _$AiutaAuthModeEnumMap = {
  AiutaAuthMode.apiKey: 'apiKey',
  AiutaAuthMode.jwt: 'jwt',
};

AiutaJwtAuth _$AiutaJwtAuthFromJson(Map<String, dynamic> json) => AiutaJwtAuth(
      subscriptionId: json['subscriptionId'] as String,
      getJWT: toNull(json['getJWT']),
    )..mode = $enumDecode(_$AiutaAuthModeEnumMap, json['mode']);

Map<String, dynamic> _$AiutaJwtAuthToJson(AiutaJwtAuth instance) {
  final val = <String, dynamic>{
    'mode': _$AiutaAuthModeEnumMap[instance.mode]!,
    'subscriptionId': instance.subscriptionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('getJWT', toNull(instance.getJWT));
  return val;
}
