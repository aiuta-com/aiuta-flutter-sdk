// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_shoes_mode_image_picker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShoesModeImagePicker _$AiutaShoesModeImagePickerFromJson(
        Map<String, dynamic> json) =>
    AiutaShoesModeImagePicker(
      predefinedModels: AiutaShoesModeImagePickerPredefinedModels.fromJson(
          json['predefinedModels'] as Map<String, dynamic>),
      images: AiutaMedia.fromJson(json['images'] as Map<String, dynamic>),
      strings: AiutaShoesModeImagePickerStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaShoesModeImagePickerToJson(
        AiutaShoesModeImagePicker instance) =>
    <String, dynamic>{
      'predefinedModels': instance.predefinedModels,
      'images': instance.images,
      'strings': instance.strings,
    };
