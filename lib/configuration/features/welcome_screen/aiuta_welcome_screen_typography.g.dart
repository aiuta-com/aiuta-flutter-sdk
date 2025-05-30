// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenTypographyBuiltIn
    _$AiutaWelcomeScreenTypographyBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaWelcomeScreenTypographyBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenTypographyBuiltInToJson(
        AiutaWelcomeScreenTypographyBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWelcomeScreenTypographyCustom _$AiutaWelcomeScreenTypographyCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenTypographyCustom(
      welcomeTitle:
          AiutaTextStyle.fromJson(json['welcomeTitle'] as Map<String, dynamic>),
      welcomeDescription: AiutaTextStyle.fromJson(
          json['welcomeDescription'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenTypographyCustomToJson(
        AiutaWelcomeScreenTypographyCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'welcomeTitle': instance.welcomeTitle,
      'welcomeDescription': instance.welcomeDescription,
    };
