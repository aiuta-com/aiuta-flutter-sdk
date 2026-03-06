// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_generated_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaGeneratedImage _$AiutaGeneratedImageFromJson(Map<String, dynamic> json) =>
    AiutaGeneratedImage(
      id: json['id'] as String,
      url: json['url'] as String,
      ownerType: $enumDecode(_$AiutaOwnerTypeEnumMap, json['ownerType']),
      productIds: (json['productIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AiutaGeneratedImageToJson(
        AiutaGeneratedImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'ownerType': _$AiutaOwnerTypeEnumMap[instance.ownerType]!,
      'productIds': instance.productIds,
    };

const _$AiutaOwnerTypeEnumMap = {
  AiutaOwnerType.user: 'user',
  AiutaOwnerType.aiuta: 'aiuta',
};
