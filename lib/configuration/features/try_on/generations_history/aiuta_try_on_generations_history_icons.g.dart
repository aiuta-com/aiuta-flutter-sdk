// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_generations_history_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnGenerationsHistoryIconsBuiltIn
    _$AiutaTryOnGenerationsHistoryIconsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryIconsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryIconsBuiltInToJson(
        AiutaTryOnGenerationsHistoryIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnGenerationsHistoryIconsCustom
    _$AiutaTryOnGenerationsHistoryIconsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryIconsCustom(
          history24:
              AiutaIcon.fromJson(json['history24'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryIconsCustomToJson(
        AiutaTryOnGenerationsHistoryIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'history24': instance.history24,
    };
