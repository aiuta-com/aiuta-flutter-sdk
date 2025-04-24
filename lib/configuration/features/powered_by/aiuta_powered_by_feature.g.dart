// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_powered_by_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaPoweredByFeature _$AiutaPoweredByFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaPoweredByFeature(
      strings: AiutaPoweredByStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      colors:
          AiutaPoweredByColors.fromJson(json['colors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaPoweredByFeatureToJson(
        AiutaPoweredByFeature instance) =>
    <String, dynamic>{
      'strings': instance.strings,
      'colors': instance.colors,
    };
