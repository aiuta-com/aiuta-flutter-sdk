// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_shoes_mode_image_picker_predefined_models_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn
    _$AiutaShoesModeImagePickerPredefinedModelsStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic>
    _$AiutaShoesModeImagePickerPredefinedModelsStringsBuiltInToJson(
            AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn instance) =>
        <String, dynamic>{
          'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
        };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaShoesModeImagePickerPredefinedModelsStringsCustom
    _$AiutaShoesModeImagePickerPredefinedModelsStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaShoesModeImagePickerPredefinedModelsStringsCustom(
          predefinedModelShoesPageTitle:
              json['predefinedModelShoesPageTitle'] as String,
          predefinedModelShoesCategories: Map<String, String>.from(
              json['predefinedModelShoesCategories'] as Map),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic>
    _$AiutaShoesModeImagePickerPredefinedModelsStringsCustomToJson(
            AiutaShoesModeImagePickerPredefinedModelsStringsCustom instance) =>
        <String, dynamic>{
          'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
          'predefinedModelShoesPageTitle':
              instance.predefinedModelShoesPageTitle,
          'predefinedModelShoesCategories':
              instance.predefinedModelShoesCategories,
        };
