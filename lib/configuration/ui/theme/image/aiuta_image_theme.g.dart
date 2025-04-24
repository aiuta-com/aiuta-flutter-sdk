// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImageTheme _$AiutaImageThemeFromJson(Map<String, dynamic> json) =>
    AiutaImageTheme(
      shapes: AiutaImageShapes.fromJson(json['shapes'] as Map<String, dynamic>),
      icons: AiutaImageIcons.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaImageThemeToJson(AiutaImageTheme instance) =>
    <String, dynamic>{
      'shapes': instance.shapes,
      'icons': instance.icons,
    };
