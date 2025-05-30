// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenStringsBuiltIn _$AiutaWelcomeScreenStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenStringsBuiltInToJson(
        AiutaWelcomeScreenStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWelcomeScreenStringsCustom _$AiutaWelcomeScreenStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenStringsCustom(
      welcomeTitle: json['welcomeTitle'] as String,
      welcomeDescription: json['welcomeDescription'] as String,
      welcomeButtonStart: json['welcomeButtonStart'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWelcomeScreenStringsCustomToJson(
        AiutaWelcomeScreenStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'welcomeTitle': instance.welcomeTitle,
      'welcomeDescription': instance.welcomeDescription,
      'welcomeButtonStart': instance.welcomeButtonStart,
    };
