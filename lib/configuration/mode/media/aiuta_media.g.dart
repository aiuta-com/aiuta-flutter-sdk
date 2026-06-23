// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaMedia _$AiutaMediaFromJson(Map<String, dynamic> json) => AiutaMedia(
      image: json['image'] as String,
      videoSource: json['videoSource'] as String?,
      contentScale: $enumDecodeNullable(
              _$AiutaMediaContentScaleEnumMap, json['contentScale']) ??
          AiutaMediaContentScale.fill,
    );

Map<String, dynamic> _$AiutaMediaToJson(AiutaMedia instance) {
  final val = <String, dynamic>{
    'image': instance.image,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('videoSource', instance.videoSource);
  val['contentScale'] = _$AiutaMediaContentScaleEnumMap[instance.contentScale]!;
  return val;
}

const _$AiutaMediaContentScaleEnumMap = {
  AiutaMediaContentScale.fit: 'fit',
  AiutaMediaContentScale.fill: 'fill',
};
