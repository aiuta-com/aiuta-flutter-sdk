// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_button_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaButtonTheme _$AiutaButtonThemeFromJson(Map<String, dynamic> json) =>
    AiutaButtonTheme(
      typography: AiutaButtonTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
      shapes:
          AiutaButtonShapes.fromJson(json['shapes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaButtonThemeToJson(AiutaButtonTheme instance) =>
    <String, dynamic>{
      'typography': instance.typography,
      'shapes': instance.shapes,
    };
