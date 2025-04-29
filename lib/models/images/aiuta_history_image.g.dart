// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_history_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaHistoryImage _$AiutaHistoryImageFromJson(Map<String, dynamic> json) =>
    AiutaHistoryImage(
      id: json['id'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$AiutaHistoryImageTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$AiutaHistoryImageToJson(AiutaHistoryImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': _$AiutaHistoryImageTypeEnumMap[instance.type]!,
    };

const _$AiutaHistoryImageTypeEnumMap = {
  AiutaHistoryImageType.uploaded: 'uploaded',
  AiutaHistoryImageType.generated: 'generated',
  AiutaHistoryImageType.inputModel: 'inputModel',
  AiutaHistoryImageType.outputModel: 'outputModel',
};
