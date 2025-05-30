// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenImagesBuiltIn _$AiutaWelcomeScreenImagesBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenImagesBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenImagesBuiltInToJson(
        AiutaWelcomeScreenImagesBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWelcomeScreenImagesCustom _$AiutaWelcomeScreenImagesCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenImagesCustom(
      welcomeBackground: json['welcomeBackground'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenImagesCustomToJson(
        AiutaWelcomeScreenImagesCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'welcomeBackground': instance.welcomeBackground,
    };
