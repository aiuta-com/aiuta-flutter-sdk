// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_with_other_photo_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnWithOtherPhotoIconsBuiltIn
    _$AiutaTryOnWithOtherPhotoIconsBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaTryOnWithOtherPhotoIconsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnWithOtherPhotoIconsBuiltInToJson(
        AiutaTryOnWithOtherPhotoIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnWithOtherPhotoIconsCustom
    _$AiutaTryOnWithOtherPhotoIconsCustomFromJson(Map<String, dynamic> json) =>
        AiutaTryOnWithOtherPhotoIconsCustom(
          changePhoto24:
              AiutaIcon.fromJson(json['changePhoto24'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnWithOtherPhotoIconsCustomToJson(
        AiutaTryOnWithOtherPhotoIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'changePhoto24': instance.changePhoto24,
    };
