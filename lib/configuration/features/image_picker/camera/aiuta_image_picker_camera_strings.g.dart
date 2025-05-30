// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_camera_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerCameraStringsBuiltIn
    _$AiutaImagePickerCameraStringsBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaImagePickerCameraStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerCameraStringsBuiltInToJson(
        AiutaImagePickerCameraStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerCameraStringsCustom
    _$AiutaImagePickerCameraStringsCustomFromJson(Map<String, dynamic> json) =>
        AiutaImagePickerCameraStringsCustom(
          cameraButtonTakePhoto: json['cameraButtonTakePhoto'] as String,
          cameraPermissionTitle: json['cameraPermissionTitle'] as String,
          cameraPermissionDescription:
              json['cameraPermissionDescription'] as String,
          cameraPermissionButtonOpenSettings:
              json['cameraPermissionButtonOpenSettings'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerCameraStringsCustomToJson(
        AiutaImagePickerCameraStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'cameraButtonTakePhoto': instance.cameraButtonTakePhoto,
      'cameraPermissionTitle': instance.cameraPermissionTitle,
      'cameraPermissionDescription': instance.cameraPermissionDescription,
      'cameraPermissionButtonOpenSettings':
          instance.cameraPermissionButtonOpenSettings,
    };
