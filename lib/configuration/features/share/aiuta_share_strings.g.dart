// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_share_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShareStringsBuiltIn _$AiutaShareStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaShareStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareStringsBuiltInToJson(
        AiutaShareStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShareStringsCustom _$AiutaShareStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaShareStringsCustom(
      shareButton: json['shareButton'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareStringsCustomToJson(
        AiutaShareStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'shareButton': instance.shareButton,
    };
