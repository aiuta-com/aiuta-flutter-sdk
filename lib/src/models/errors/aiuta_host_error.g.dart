// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_host_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaHostError _$AiutaHostErrorFromJson(Map<String, dynamic> json) =>
    AiutaHostError(
      errorType: $enumDecode(_$AiutaHostErrorTypeEnumMap, json['errorType']),
    );

Map<String, dynamic> _$AiutaHostErrorToJson(AiutaHostError instance) =>
    <String, dynamic>{
      'errorType': _$AiutaHostErrorTypeEnumMap[instance.errorType]!,
    };

const _$AiutaHostErrorTypeEnumMap = {
  AiutaHostErrorType.failedToDeleteUploadedImages:
      'failedToDeleteUploadedImages',
  AiutaHostErrorType.failedToDeleteGeneratedImages:
      'failedToDeleteGeneratedImages',
};
