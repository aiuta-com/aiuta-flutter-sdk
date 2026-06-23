// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_shoes_mode_image_picker_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShoesModeImagePickerStringsBuiltIn
    _$AiutaShoesModeImagePickerStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeImagePickerStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShoesModeImagePickerStringsBuiltInToJson(
        AiutaShoesModeImagePickerStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShoesModeImagePickerStringsCustom
    _$AiutaShoesModeImagePickerStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeImagePickerStringsCustom(
          imagePickerShoesDescriptionEmpty:
              json['imagePickerShoesDescriptionEmpty'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaShoesModeImagePickerStringsCustomToJson(
        AiutaShoesModeImagePickerStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'imagePickerShoesDescriptionEmpty':
          instance.imagePickerShoesDescriptionEmpty,
    };
