// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_data_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteOnboardingAction _$CompleteOnboardingActionFromJson(
        Map<String, dynamic> json) =>
    CompleteOnboardingAction()
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$CompleteOnboardingActionToJson(
        CompleteOnboardingAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
    };

const _$AiutaDataActionTypeEnumMap = {
  AiutaDataActionType.completeOnboarding: 'completeOnboarding',
  AiutaDataActionType.obtainUserConsentsIds: 'obtainUserConsentsIds',
  AiutaDataActionType.addUploadedImages: 'addUploadedImages',
  AiutaDataActionType.selectUploadedImage: 'selectUploadedImage',
  AiutaDataActionType.deleteUploadedImages: 'deleteUploadedImages',
  AiutaDataActionType.addGeneratedImages: 'addGeneratedImages',
  AiutaDataActionType.deleteGeneratedImages: 'deleteGeneratedImages',
};

ObtainUserConsentsIdsAction _$ObtainUserConsentsIdsActionFromJson(
        Map<String, dynamic> json) =>
    ObtainUserConsentsIdsAction(
      consentIds: (json['consentIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$ObtainUserConsentsIdsActionToJson(
        ObtainUserConsentsIdsAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'consentIds': instance.consentIds,
    };

AddUploadedImagesAction _$AddUploadedImagesActionFromJson(
        Map<String, dynamic> json) =>
    AddUploadedImagesAction(
      uploadedImages: (json['uploadedImages'] as List<dynamic>)
          .map((e) => AiutaHistoryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$AddUploadedImagesActionToJson(
        AddUploadedImagesAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'uploadedImages': instance.uploadedImages,
    };

SelectUploadedImageAction _$SelectUploadedImageActionFromJson(
        Map<String, dynamic> json) =>
    SelectUploadedImageAction(
      uploadedImage: AiutaHistoryImage.fromJson(
          json['uploadedImage'] as Map<String, dynamic>),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$SelectUploadedImageActionToJson(
        SelectUploadedImageAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'uploadedImage': instance.uploadedImage,
    };

DeleteUploadedImagesAction _$DeleteUploadedImagesActionFromJson(
        Map<String, dynamic> json) =>
    DeleteUploadedImagesAction(
      uploadedImages: (json['uploadedImages'] as List<dynamic>)
          .map((e) => AiutaHistoryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$DeleteUploadedImagesActionToJson(
        DeleteUploadedImagesAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'uploadedImages': instance.uploadedImages,
    };

AddGeneratedImagesAction _$AddGeneratedImagesActionFromJson(
        Map<String, dynamic> json) =>
    AddGeneratedImagesAction(
      productsIds: (json['productsIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      generatedImages: (json['generatedImages'] as List<dynamic>)
          .map((e) => AiutaHistoryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$AddGeneratedImagesActionToJson(
        AddGeneratedImagesAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'productsIds': instance.productsIds,
      'generatedImages': instance.generatedImages,
    };

DeleteGeneratedImagesAction _$DeleteGeneratedImagesActionFromJson(
        Map<String, dynamic> json) =>
    DeleteGeneratedImagesAction(
      generatedImages: (json['generatedImages'] as List<dynamic>)
          .map((e) => AiutaHistoryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..type = $enumDecode(_$AiutaDataActionTypeEnumMap, json['type'])
      ..id = json['id'] as String?;

Map<String, dynamic> _$DeleteGeneratedImagesActionToJson(
        DeleteGeneratedImagesAction instance) =>
    <String, dynamic>{
      'type': _$AiutaDataActionTypeEnumMap[instance.type]!,
      'id': instance.id,
      'generatedImages': instance.generatedImages,
    };
