// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_generations_history_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnGenerationsHistoryDataProviderBuiltIn
    _$AiutaTryOnGenerationsHistoryDataProviderBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryDataProviderBuiltIn()
          ..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryDataProviderBuiltInToJson(
        AiutaTryOnGenerationsHistoryDataProviderBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
    };

const _$AiutaDataProviderTypeEnumMap = {
  AiutaDataProviderType.builtIn: 'builtIn',
  AiutaDataProviderType.custom: 'custom',
};

AiutaTryOnGenerationsHistoryDataProviderCustom
    _$AiutaTryOnGenerationsHistoryDataProviderCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryDataProviderCustom(
          generatedImages: toNull(json['generatedImages']),
          addGeneratedImages: toNull(json['addGeneratedImages']),
          deleteGeneratedImages: toNull(json['deleteGeneratedImages']),
        )..type = $enumDecode(_$AiutaDataProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryDataProviderCustomToJson(
    AiutaTryOnGenerationsHistoryDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaDataProviderTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('generatedImages', toNull(instance.generatedImages));
  writeNotNull('addGeneratedImages', toNull(instance.addGeneratedImages));
  writeNotNull('deleteGeneratedImages', toNull(instance.deleteGeneratedImages));
  return val;
}
