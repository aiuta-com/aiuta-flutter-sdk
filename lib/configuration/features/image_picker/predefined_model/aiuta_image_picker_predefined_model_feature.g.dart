// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_predefined_model_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPredefinedModelFeature
    _$AiutaImagePickerPredefinedModelFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelFeature(
          icons: AiutaImagePickerPredefinedModelIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          strings: AiutaImagePickerPredefinedModelStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaImagePickerPredefinedModelFeatureToJson(
        AiutaImagePickerPredefinedModelFeature instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'strings': instance.strings,
    };
