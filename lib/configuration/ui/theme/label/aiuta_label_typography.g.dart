// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_label_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaLabelTypographyBuiltIn _$AiutaLabelTypographyBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaLabelTypographyBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaLabelTypographyBuiltInToJson(
        AiutaLabelTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaLabelTypographyCustom _$AiutaLabelTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaLabelTypographyCustom(
      titleL: AiutaTextStyle.fromJson(json['titleL'] as Map<String, dynamic>),
      titleM: AiutaTextStyle.fromJson(json['titleM'] as Map<String, dynamic>),
      regular: AiutaTextStyle.fromJson(json['regular'] as Map<String, dynamic>),
      subtle: AiutaTextStyle.fromJson(json['subtle'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaLabelTypographyCustomToJson(
        AiutaLabelTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'titleL': instance.titleL,
      'titleM': instance.titleM,
      'regular': instance.regular,
      'subtle': instance.subtle,
    };
