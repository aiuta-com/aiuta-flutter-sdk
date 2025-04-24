// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_predefined_model_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPredefinedModelStrings
    _$AiutaImagePickerPredefinedModelStringsFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelStrings(
          predefinedModelPageTitle: json['predefinedModelPageTitle'] as String,
          predefinedModelOr: json['predefinedModelOr'] as String,
          predefinedModelErrorEmptyModelsList:
              json['predefinedModelErrorEmptyModelsList'] as String,
          predefinedModelCategories: Map<String, String>.from(
              json['predefinedModelCategories'] as Map),
        );

Map<String, dynamic> _$AiutaImagePickerPredefinedModelStringsToJson(
        AiutaImagePickerPredefinedModelStrings instance) =>
    <String, dynamic>{
      'predefinedModelPageTitle': instance.predefinedModelPageTitle,
      'predefinedModelOr': instance.predefinedModelOr,
      'predefinedModelErrorEmptyModelsList':
          instance.predefinedModelErrorEmptyModelsList,
      'predefinedModelCategories': instance.predefinedModelCategories,
    };
