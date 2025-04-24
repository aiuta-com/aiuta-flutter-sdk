// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_bottom_sheet_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaBottomSheetTheme _$AiutaBottomSheetThemeFromJson(
        Map<String, dynamic> json) =>
    AiutaBottomSheetTheme(
      typography: AiutaBottomSheetTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
      shapes: AiutaBottomSheetShapes.fromJson(
          json['shapes'] as Map<String, dynamic>),
      grabber: AiutaBottomSheetGrabber.fromJson(
          json['grabber'] as Map<String, dynamic>),
      toggles: AiutaBottomSheetToggles.fromJson(
          json['toggles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaBottomSheetThemeToJson(
        AiutaBottomSheetTheme instance) =>
    <String, dynamic>{
      'typography': instance.typography,
      'shapes': instance.shapes,
      'grabber': instance.grabber,
      'toggles': instance.toggles,
    };
