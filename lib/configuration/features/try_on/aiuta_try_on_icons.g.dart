// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnIconsBuiltIn _$AiutaTryOnIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnIconsBuiltInToJson(
        AiutaTryOnIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnIconsCustom _$AiutaTryOnIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnIconsCustom(
      tryOn20: AiutaIcon.fromJson(json['tryOn20'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnIconsCustomToJson(
        AiutaTryOnIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'tryOn20': instance.tryOn20,
    };
