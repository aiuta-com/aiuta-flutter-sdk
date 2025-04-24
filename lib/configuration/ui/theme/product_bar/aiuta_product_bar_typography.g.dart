// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarTypography _$AiutaProductBarTypographyFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarTypography(
      product: AiutaTextStyle.fromJson(json['product'] as Map<String, dynamic>),
      brand: AiutaTextStyle.fromJson(json['brand'] as Map<String, dynamic>),
      price: AiutaTextStyle.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaProductBarTypographyToJson(
        AiutaProductBarTypography instance) =>
    <String, dynamic>{
      'product': instance.product,
      'brand': instance.brand,
      'price': instance.price,
    };
