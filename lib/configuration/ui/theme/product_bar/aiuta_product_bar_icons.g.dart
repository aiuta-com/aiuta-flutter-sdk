// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarIconsBuiltIn _$AiutaProductBarIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarIconsBuiltInToJson(
        AiutaProductBarIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaProductBarIconsCustom _$AiutaProductBarIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarIconsCustom(
      arrow16: AiutaIcon.fromJson(json['arrow16'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarIconsCustomToJson(
        AiutaProductBarIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'arrow16': instance.arrow16,
    };
