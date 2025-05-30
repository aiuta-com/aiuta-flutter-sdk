// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_share_watermark_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShareWatermarkImagesBuiltIn _$AiutaShareWatermarkImagesBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaShareWatermarkImagesBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareWatermarkImagesBuiltInToJson(
        AiutaShareWatermarkImagesBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShareWatermarkImagesCustom _$AiutaShareWatermarkImagesCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaShareWatermarkImagesCustom(
      watermark: json['watermark'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShareWatermarkImagesCustomToJson(
        AiutaShareWatermarkImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'watermark': instance.watermark,
    };
