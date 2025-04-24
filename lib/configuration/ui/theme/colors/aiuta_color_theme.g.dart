// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_color_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaColorTheme _$AiutaColorThemeFromJson(Map<String, dynamic> json) =>
    AiutaColorTheme(
      scheme: $enumDecode(_$AiutaColorSchemeEnumMap, json['scheme']),
      brand: json['brand'] as String,
      primary: json['primary'] as String,
      secondary: json['secondary'] as String,
      onDark: json['onDark'] as String,
      onLight: json['onLight'] as String,
      background: json['background'] as String,
      screen: json['screen'] as String,
      neutral: json['neutral'] as String,
      border: json['border'] as String,
      outline: json['outline'] as String,
    );

Map<String, dynamic> _$AiutaColorThemeToJson(AiutaColorTheme instance) =>
    <String, dynamic>{
      'scheme': _$AiutaColorSchemeEnumMap[instance.scheme]!,
      'brand': instance.brand,
      'primary': instance.primary,
      'secondary': instance.secondary,
      'onDark': instance.onDark,
      'onLight': instance.onLight,
      'background': instance.background,
      'screen': instance.screen,
      'neutral': instance.neutral,
      'border': instance.border,
      'outline': instance.outline,
    };

const _$AiutaColorSchemeEnumMap = {
  AiutaColorScheme.light: 'light',
  AiutaColorScheme.dark: 'dark',
};
