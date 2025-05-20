// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_predefined_model_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPredefinedModelFeature
    _$AiutaImagePickerPredefinedModelFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelFeature(
          data: json['data'] == null
              ? null
              : AiutaImagePickerPredefinedModelData.fromJson(
                  json['data'] as Map<String, dynamic>),
          icons: AiutaImagePickerPredefinedModelIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          strings: AiutaImagePickerPredefinedModelStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaImagePickerPredefinedModelFeatureToJson(
        AiutaImagePickerPredefinedModelFeature instance) =>
    <String, dynamic>{
      'data': instance.data,
      'icons': instance.icons,
      'strings': instance.strings,
    };
