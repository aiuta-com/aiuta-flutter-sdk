// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_input_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaInputImage _$AiutaInputImageFromJson(Map<String, dynamic> json) =>
    AiutaInputImage(
      id: json['id'] as String,
      url: json['url'] as String,
      ownerType: $enumDecode(_$AiutaOwnerTypeEnumMap, json['ownerType']),
    );

Map<String, dynamic> _$AiutaInputImageToJson(AiutaInputImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'ownerType': _$AiutaOwnerTypeEnumMap[instance.ownerType]!,
    };

const _$AiutaOwnerTypeEnumMap = {
  AiutaOwnerType.user: 'user',
  AiutaOwnerType.aiuta: 'aiuta',
};
