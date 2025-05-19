// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_share_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShareFeature _$AiutaShareFeatureFromJson(Map<String, dynamic> json) =>
    AiutaShareFeature(
      watermark: json['watermark'] == null
          ? null
          : AiutaShareWatermarkFeature.fromJson(
              json['watermark'] as Map<String, dynamic>),
      icons: AiutaShareIcons.fromJson(json['icons'] as Map<String, dynamic>),
      strings:
          AiutaShareStrings.fromJson(json['strings'] as Map<String, dynamic>),
      dataProvider: json['dataProvider'] == null
          ? null
          : AiutaShareDataProvider.fromJson(
              json['dataProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaShareFeatureToJson(AiutaShareFeature instance) =>
    <String, dynamic>{
      'watermark': instance.watermark,
      'icons': instance.icons,
      'strings': instance.strings,
      'dataProvider': instance.dataProvider,
    };
