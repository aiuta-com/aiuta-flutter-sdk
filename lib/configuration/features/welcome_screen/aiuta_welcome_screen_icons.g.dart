// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenIconsBuiltIn _$AiutaWelcomeScreenIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenIconsBuiltInToJson(
        AiutaWelcomeScreenIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWelcomeScreenIconsCustom _$AiutaWelcomeScreenIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenIconsCustom(
      welcome82: AiutaIcon.fromJson(json['welcome82'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenIconsCustomToJson(
        AiutaWelcomeScreenIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'welcome82': instance.welcome82,
    };
