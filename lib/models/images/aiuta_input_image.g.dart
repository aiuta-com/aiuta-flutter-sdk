// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_input_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaInputImage _$AiutaInputImageFromJson(Map<String, dynamic> json) =>
    AiutaInputImage(
      id: json['id'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$AiutaOwnerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$AiutaInputImageToJson(AiutaInputImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'type': _$AiutaOwnerTypeEnumMap[instance.type]!,
    };

const _$AiutaOwnerTypeEnumMap = {
  AiutaOwnerType.user: 'user',
  AiutaOwnerType.aiuta: 'aiuta',
};
