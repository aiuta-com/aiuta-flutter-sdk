// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_activity_indicator_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaActivityIndicatorTheme _$AiutaActivityIndicatorThemeFromJson(
        Map<String, dynamic> json) =>
    AiutaActivityIndicatorTheme(
      icons: AiutaActivityIndicatorIcons.fromJson(
          json['icons'] as Map<String, dynamic>),
      colors: AiutaActivityIndicatorColors.fromJson(
          json['colors'] as Map<String, dynamic>),
      settings: AiutaActivityIndicatorSettings.fromJson(
          json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaActivityIndicatorThemeToJson(
        AiutaActivityIndicatorTheme instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'colors': instance.colors,
      'settings': instance.settings,
    };
