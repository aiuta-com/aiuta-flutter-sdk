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
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerImagesCustomToJson(
        AiutaImagePickerImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'examples': instance.examples,
    };
