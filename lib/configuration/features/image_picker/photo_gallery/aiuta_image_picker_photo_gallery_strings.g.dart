// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_photo_gallery_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPhotoGalleryStringsBuiltIn
    _$AiutaImagePickerPhotoGalleryStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPhotoGalleryStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPhotoGalleryStringsBuiltInToJson(
        AiutaImagePickerPhotoGalleryStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerPhotoGalleryStringsCustom
    _$AiutaImagePickerPhotoGalleryStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPhotoGalleryStringsCustom(
          galleryButtonSelectPhoto: json['galleryButtonSelectPhoto'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPhotoGalleryStringsCustomToJson(
        AiutaImagePickerPhotoGalleryStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'galleryButtonSelectPhoto': instance.galleryButtonSelectPhoto,
    };
