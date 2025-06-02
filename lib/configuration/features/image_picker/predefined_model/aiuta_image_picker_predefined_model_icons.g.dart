// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_predefined_model_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerPredefinedModelIconsBuiltIn
    _$AiutaImagePickerPredefinedModelIconsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelIconsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPredefinedModelIconsBuiltInToJson(
        AiutaImagePickerPredefinedModelIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerPredefinedModelIconsCustom
    _$AiutaImagePickerPredefinedModelIconsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerPredefinedModelIconsCustom(
          selectModels24: AiutaIcon.fromJson(
              json['selectModels24'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerPredefinedModelIconsCustomToJson(
        AiutaImagePickerPredefinedModelIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'selectModels24': instance.selectModels24,
    };
