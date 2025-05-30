// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_button_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaButtonTypographyBuiltIn _$AiutaButtonTypographyBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaButtonTypographyBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaButtonTypographyBuiltInToJson(
        AiutaButtonTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaButtonTypographyCustom _$AiutaButtonTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaButtonTypographyCustom(
      buttonM: AiutaTextStyle.fromJson(json['buttonM'] as Map<String, dynamic>),
      buttonS: AiutaTextStyle.fromJson(json['buttonS'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaButtonTypographyCustomToJson(
        AiutaButtonTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'buttonM': instance.buttonM,
      'buttonS': instance.buttonS,
    };
