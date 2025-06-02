// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_bottom_sheet_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaBottomSheetTypographyBuiltIn _$AiutaBottomSheetTypographyBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaBottomSheetTypographyBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaBottomSheetTypographyBuiltInToJson(
        AiutaBottomSheetTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaBottomSheetTypographyCustom _$AiutaBottomSheetTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaBottomSheetTypographyCustom(
      iconButton:
          AiutaTextStyle.fromJson(json['iconButton'] as Map<String, dynamic>),
      chipsButton:
          AiutaTextStyle.fromJson(json['chipsButton'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaBottomSheetTypographyCustomToJson(
        AiutaBottomSheetTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'iconButton': instance.iconButton,
      'chipsButton': instance.chipsButton,
    };
