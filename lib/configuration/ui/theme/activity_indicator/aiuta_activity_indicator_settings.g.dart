// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_activity_indicator_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaActivityIndicatorSettings _$AiutaActivityIndicatorSettingsFromJson(
        Map<String, dynamic> json) =>
    AiutaActivityIndicatorSettings(
      indicationDelay: (json['indicationDelay'] as num).toInt(),
      spinDuration: (json['spinDuration'] as num).toInt(),
    );

Map<String, dynamic> _$AiutaActivityIndicatorSettingsToJson(
        AiutaActivityIndicatorSettings instance) =>
    <String, dynamic>{
      'indicationDelay': instance.indicationDelay,
      'spinDuration': instance.spinDuration,
    };
