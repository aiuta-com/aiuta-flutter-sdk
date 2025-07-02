// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_activity_indicator_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaActivityIndicatorIconsBuiltIn _$AiutaActivityIndicatorIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaActivityIndicatorIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaActivityIndicatorIconsBuiltInToJson(
        AiutaActivityIndicatorIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaActivityIndicatorIconsCustom _$AiutaActivityIndicatorIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaActivityIndicatorIconsCustom(
      loading14: AiutaIcon.fromJson(json['loading14'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaActivityIndicatorIconsCustomToJson(
        AiutaActivityIndicatorIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'loading14': instance.loading14,
    };
