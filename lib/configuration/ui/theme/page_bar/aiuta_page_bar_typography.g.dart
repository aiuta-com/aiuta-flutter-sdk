// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_page_bar_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaPageBarTypographyBuiltIn _$AiutaPageBarTypographyBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaPageBarTypographyBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPageBarTypographyBuiltInToJson(
        AiutaPageBarTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaPageBarTypographyCustom _$AiutaPageBarTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaPageBarTypographyCustom(
      pageTitle:
          AiutaTextStyle.fromJson(json['pageTitle'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPageBarTypographyCustomToJson(
        AiutaPageBarTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'pageTitle': instance.pageTitle,
    };
