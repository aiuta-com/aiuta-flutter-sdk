// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImageIconsBuiltIn _$AiutaImageIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaImageIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImageIconsBuiltInToJson(
        AiutaImageIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImageIconsCustom _$AiutaImageIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaImageIconsCustom(
      imageError36:
          AiutaIcon.fromJson(json['imageError36'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImageIconsCustomToJson(
        AiutaImageIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'imageError36': instance.imageError36,
    };
