// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_photo_gallery_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPhotoGalleryIconsBuiltIn
    _$AiutaImagePickerPhotoGalleryIconsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPhotoGalleryIconsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPhotoGalleryIconsBuiltInToJson(
        AiutaImagePickerPhotoGalleryIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerPhotoGalleryIconsCustom
    _$AiutaImagePickerPhotoGalleryIconsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPhotoGalleryIconsCustom(
          gallery24:
              AiutaIcon.fromJson(json['gallery24'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPhotoGalleryIconsCustomToJson(
        AiutaImagePickerPhotoGalleryIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'gallery24': instance.gallery24,
    };
