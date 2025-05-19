// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_prices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarPrices _$AiutaProductBarPricesFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarPrices(
      typography: AiutaProductBarPricesTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
      colors: AiutaProductBarPricesColors.fromJson(
          json['colors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaProductBarPricesToJson(
        AiutaProductBarPrices instance) =>
    <String, dynamic>{
      'typography': instance.typography,
      'colors': instance.colors,
    };
