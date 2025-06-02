// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
