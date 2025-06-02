// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_camera_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerCameraIconsBuiltIn _$AiutaImagePickerCameraIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerCameraIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerCameraIconsBuiltInToJson(
        AiutaImagePickerCameraIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerCameraIconsCustom _$AiutaImagePickerCameraIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerCameraIconsCustom(
      camera24: AiutaIcon.fromJson(json['camera24'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerCameraIconsCustomToJson(
        AiutaImagePickerCameraIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'camera24': instance.camera24,
    };
