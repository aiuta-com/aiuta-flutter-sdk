// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product_bar_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProductBarTheme _$AiutaProductBarThemeFromJson(
        Map<String, dynamic> json) =>
    AiutaProductBarTheme(
      prices: json['prices'] == null
          ? null
          : AiutaProductBarPrices.fromJson(
              json['prices'] as Map<String, dynamic>),
      typography: AiutaProductBarTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
      toggles: AiutaProductBarToggles.fromJson(
          json['toggles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaProductBarThemeToJson(
        AiutaProductBarTheme instance) =>
    <String, dynamic>{
      'prices': instance.prices,
      'typography': instance.typography,
      'toggles': instance.toggles,
    };
