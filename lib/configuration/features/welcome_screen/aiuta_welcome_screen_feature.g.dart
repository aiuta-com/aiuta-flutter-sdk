// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenFeature _$AiutaWelcomeScreenFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenFeature(
      images: AiutaWelcomeScreenImages.fromJson(
          json['images'] as Map<String, dynamic>),
      icons: AiutaWelcomeScreenIcons.fromJson(
          json['icons'] as Map<String, dynamic>),
      strings: AiutaWelcomeScreenStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      typography: AiutaWelcomeScreenTypography.fromJson(
          json['typography'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaWelcomeScreenFeatureToJson(
        AiutaWelcomeScreenFeature instance) =>
    <String, dynamic>{
      'images': instance.images,
      'icons': instance.icons,
      'strings': instance.strings,
      'typography': instance.typography,
    };
