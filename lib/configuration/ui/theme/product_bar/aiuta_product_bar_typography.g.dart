// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarTypographyBuiltIn _$AiutaProductBarTypographyBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarTypographyBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarTypographyBuiltInToJson(
        AiutaProductBarTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaProductBarTypographyCustom _$AiutaProductBarTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarTypographyCustom(
      product: AiutaTextStyle.fromJson(json['product'] as Map<String, dynamic>),
      brand: AiutaTextStyle.fromJson(json['brand'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarTypographyCustomToJson(
        AiutaProductBarTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'product': instance.product,
      'brand': instance.brand,
    };
