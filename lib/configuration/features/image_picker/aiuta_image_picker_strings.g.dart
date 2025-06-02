// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerStringsBuiltIn _$AiutaImagePickerStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerStringsBuiltInToJson(
        AiutaImagePickerStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerStringsCustom _$AiutaImagePickerStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerStringsCustom(
      imagePickerTitleEmpty: json['imagePickerTitleEmpty'] as String,
      imagePickerDescriptionEmpty:
          json['imagePickerDescriptionEmpty'] as String,
      imagePickerButtonUploadImage:
          json['imagePickerButtonUploadImage'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerStringsCustomToJson(
        AiutaImagePickerStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'imagePickerTitleEmpty': instance.imagePickerTitleEmpty,
      'imagePickerDescriptionEmpty': instance.imagePickerDescriptionEmpty,
      'imagePickerButtonUploadImage': instance.imagePickerButtonUploadImage,
    };
