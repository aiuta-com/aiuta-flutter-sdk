// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerImagesBuiltIn _$AiutaImagePickerImagesBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerImagesBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerImagesBuiltInToJson(
        AiutaImagePickerImagesBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerImagesCustom _$AiutaImagePickerImagesCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerImagesCustom(
      example: AiutaMedia.fromJson(json['example'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerImagesCustomToJson(
        AiutaImagePickerImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'example': instance.example,
    };
