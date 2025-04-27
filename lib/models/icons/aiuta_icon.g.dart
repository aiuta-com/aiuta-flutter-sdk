// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaIcon _$AiutaIconFromJson(Map<String, dynamic> json) => AiutaIcon(
      path: json['path'] as String,
      renderMode:
          $enumDecodeNullable(_$AiutaRenderModeEnumMap, json['renderMode']) ??
              AiutaRenderMode.template,
    );

Map<String, dynamic> _$AiutaIconToJson(AiutaIcon instance) => <String, dynamic>{
      'path': instance.path,
      'renderMode': _$AiutaRenderModeEnumMap[instance.renderMode]!,
    };

const _$AiutaRenderModeEnumMap = {
  AiutaRenderMode.original: 'original',
  AiutaRenderMode.template: 'template',
};
