// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_prices_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarPricesTypographyBuiltIn
    _$AiutaProductBarPricesTypographyBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaProductBarPricesTypographyBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarPricesTypographyBuiltInToJson(
        AiutaProductBarPricesTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaProductBarPricesTypographyCustom
    _$AiutaProductBarPricesTypographyCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaProductBarPricesTypographyCustom(
          price: AiutaTextStyle.fromJson(json['price'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaProductBarPricesTypographyCustomToJson(
        AiutaProductBarPricesTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'price': instance.price,
    };
