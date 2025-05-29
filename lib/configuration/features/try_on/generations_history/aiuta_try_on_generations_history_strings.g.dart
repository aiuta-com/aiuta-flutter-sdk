// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_generations_history_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnGenerationsHistoryStringsBuiltIn
    _$AiutaTryOnGenerationsHistoryStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryStringsBuiltInToJson(
        AiutaTryOnGenerationsHistoryStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnGenerationsHistoryStringsCustom
    _$AiutaTryOnGenerationsHistoryStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnGenerationsHistoryStringsCustom(
          generationsHistoryPageTitle:
              json['generationsHistoryPageTitle'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnGenerationsHistoryStringsCustomToJson(
        AiutaTryOnGenerationsHistoryStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'generationsHistoryPageTitle': instance.generationsHistoryPageTitle,
    };
