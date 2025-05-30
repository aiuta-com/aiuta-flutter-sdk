// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_predefined_model_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPredefinedModelStringsBuiltIn
    _$AiutaImagePickerPredefinedModelStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPredefinedModelStringsBuiltInToJson(
        AiutaImagePickerPredefinedModelStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerPredefinedModelStringsCustom
    _$AiutaImagePickerPredefinedModelStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelStringsCustom(
          predefinedModelPageTitle: json['predefinedModelPageTitle'] as String,
          predefinedModelOr: json['predefinedModelOr'] as String,
          predefinedModelErrorEmptyModelsList:
              json['predefinedModelErrorEmptyModelsList'] as String,
          predefinedModelCategories: Map<String, String>.from(
              json['predefinedModelCategories'] as Map),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPredefinedModelStringsCustomToJson(
        AiutaImagePickerPredefinedModelStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'predefinedModelPageTitle': instance.predefinedModelPageTitle,
      'predefinedModelOr': instance.predefinedModelOr,
      'predefinedModelErrorEmptyModelsList':
          instance.predefinedModelErrorEmptyModelsList,
      'predefinedModelCategories': instance.predefinedModelCategories,
    };
