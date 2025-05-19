// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_consent_standalone_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConsentStandaloneDataProviderBuiltIn
    _$AiutaConsentStandaloneDataProviderBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneDataProviderBuiltIn()
          ..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneDataProviderBuiltInToJson(
        AiutaConsentStandaloneDataProviderBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
    };

const _$AiutaDataProviderTypeEnumMap = {
  AiutaDataProviderType.builtIn: 'builtIn',
  AiutaDataProviderType.custom: 'custom',
};

AiutaConsentStandaloneDataProviderCustom
    _$AiutaConsentStandaloneDataProviderCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaConsentStandaloneDataProviderCustom(
          obtainedConsentsIds: toNull(json['obtainedConsentsIds']),
          obtainConsentsIds: toNull(json['obtainConsentsIds']),
        )..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaConsentStandaloneDataProviderCustomToJson(
    AiutaConsentStandaloneDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('obtainedConsentsIds', toNull(instance.obtainedConsentsIds));
  writeNotNull('obtainConsentsIds', toNull(instance.obtainConsentsIds));
  return val;
}
