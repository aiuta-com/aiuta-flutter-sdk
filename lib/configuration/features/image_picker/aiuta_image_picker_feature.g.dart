// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerFeature _$AiutaImagePickerFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaImagePickerFeature(
      camera: json['camera'] == null
          ? null
          : AiutaImagePickerCameraFeature.fromJson(
              json['camera'] as Map<String, dynamic>),
      photoGallery: AiutaImagePickerPhotoGalleryFeature.fromJson(
          json['photoGallery'] as Map<String, dynamic>),
      predefinedModels: json['predefinedModels'] == null
          ? null
          : AiutaImagePickerPredefinedModelFeature.fromJson(
              json['predefinedModels'] as Map<String, dynamic>),
      protectionDisclaimer: json['protectionDisclaimer'] == null
          ? null
          : AiutaImagePickerProtectionDisclaimerFeature.fromJson(
              json['protectionDisclaimer'] as Map<String, dynamic>),
      uploadsHistory: json['uploadsHistory'] == null
          ? null
          : AiutaImagePickerUploadsHistoryFeature.fromJson(
              json['uploadsHistory'] as Map<String, dynamic>),
      images: AiutaImagePickerImages.fromJson(
          json['images'] as Map<String, dynamic>),
      strings: AiutaImagePickerStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaImagePickerFeatureToJson(
        AiutaImagePickerFeature instance) =>
    <String, dynamic>{
      'camera': instance.camera,
      'photoGallery': instance.photoGallery,
      'predefinedModels': instance.predefinedModels,
      'protectionDisclaimer': instance.protectionDisclaimer,
      'uploadsHistory': instance.uploadsHistory,
      'images': instance.images,
      'strings': instance.strings,
    };
