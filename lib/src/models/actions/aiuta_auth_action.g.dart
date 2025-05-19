// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_auth_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestJwtAction _$RequestJwtActionFromJson(Map<String, dynamic> json) =>
    RequestJwtAction(
      params: json['params'] as String,
    )..type = $enumDecode(_$AiutaAuthActionTypeEnumMap, json['type']);

Map<String, dynamic> _$RequestJwtActionToJson(RequestJwtAction instance) =>
    <String, dynamic>{
      'type': _$AiutaAuthActionTypeEnumMap[instance.type]!,
      'params': instance.params,
    };

const _$AiutaAuthActionTypeEnumMap = {
  AiutaAuthActionType.requestJwt: 'requestJwt',
};
