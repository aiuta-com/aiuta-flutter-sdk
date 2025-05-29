// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_share_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShareIconsBuiltIn _$AiutaShareIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaShareIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareIconsBuiltInToJson(
        AiutaShareIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShareIconsCustom _$AiutaShareIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaShareIconsCustom(
      share24: AiutaIcon.fromJson(json['share24'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareIconsCustomToJson(
        AiutaShareIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'share24': instance.share24,
    };
