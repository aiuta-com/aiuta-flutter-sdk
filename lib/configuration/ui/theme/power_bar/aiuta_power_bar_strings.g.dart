// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_power_bar_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaPowerBarStringsBuiltIn _$AiutaPowerBarStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaPowerBarStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPowerBarStringsBuiltInToJson(
        AiutaPowerBarStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaPowerBarStringsCustom _$AiutaPowerBarStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaPowerBarStringsCustom(
      poweredByAiuta: json['poweredByAiuta'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPowerBarStringsCustomToJson(
        AiutaPowerBarStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'poweredByAiuta': instance.poweredByAiuta,
    };
