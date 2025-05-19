// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_data_action_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaDataActionError _$AiutaDataActionErrorFromJson(
        Map<String, dynamic> json) =>
    AiutaDataActionError(
      actionId: json['actionId'] as String,
      actionType: $enumDecode(_$AiutaDataActionTypeEnumMap, json['actionType']),
    );

Map<String, dynamic> _$AiutaDataActionErrorToJson(
        AiutaDataActionError instance) =>
    <String, dynamic>{
      'actionId': instance.actionId,
      'actionType': _$AiutaDataActionTypeEnumMap[instance.actionType]!,
    };

const _$AiutaDataActionTypeEnumMap = {
  AiutaDataActionType.completeOnboarding: 'completeOnboarding',
  AiutaDataActionType.obtainUserConsentsIds: 'obtainUserConsentsIds',
  AiutaDataActionType.addUploadedImages: 'addUploadedImages',
  AiutaDataActionType.selectUploadedImage: 'selectUploadedImage',
  AiutaDataActionType.deleteUploadedImages: 'deleteUploadedImages',
  AiutaDataActionType.addGeneratedImages: 'addGeneratedImages',
  AiutaDataActionType.deleteGeneratedImages: 'deleteGeneratedImages',
  AiutaDataActionType.getShareText: 'getShareText',
};
