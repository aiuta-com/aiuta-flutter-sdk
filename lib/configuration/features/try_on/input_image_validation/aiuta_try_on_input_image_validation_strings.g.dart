// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_input_image_validation_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnInputImageValidationStringsBuiltIn
    _$AiutaTryOnInputImageValidationStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnInputImageValidationStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnInputImageValidationStringsBuiltInToJson(
        AiutaTryOnInputImageValidationStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnInputImageValidationStringsCustom
    _$AiutaTryOnInputImageValidationStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaTryOnInputImageValidationStringsCustom(
          invalidInputImageDescription:
              json['invalidInputImageDescription'] as String,
          invalidInputImageChangePhotoButton:
              json['invalidInputImageChangePhotoButton'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnInputImageValidationStringsCustomToJson(
        AiutaTryOnInputImageValidationStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'invalidInputImageDescription': instance.invalidInputImageDescription,
      'invalidInputImageChangePhotoButton':
          instance.invalidInputImageChangePhotoButton,
    };
