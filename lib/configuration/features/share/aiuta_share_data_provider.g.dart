// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_share_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShareDataProviderCustom _$AiutaShareDataProviderCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaShareDataProviderCustom(
      getShareText: toNull(json['getShareText']),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareDataProviderCustomToJson(
    AiutaShareDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('getShareText', toNull(instance.getShareText));
  return val;
}

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
