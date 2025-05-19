// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_page_bar_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaPageBarTheme _$AiutaPageBarThemeFromJson(Map<String, dynamic> json) =>
    AiutaPageBarTheme(
      typography: AiutaPageBarTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
      icons: AiutaPageBarIcons.fromJson(json['icons'] as Map<String, dynamic>),
      toggles:
          AiutaPageBarToggles.fromJson(json['toggles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaPageBarThemeToJson(AiutaPageBarTheme instance) =>
    <String, dynamic>{
      'typography': instance.typography,
      'icons': instance.icons,
      'toggles': instance.toggles,
    };
