// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnStringsBuiltIn _$AiutaTryOnStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnStringsBuiltInToJson(
        AiutaTryOnStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnStringsCustom _$AiutaTryOnStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnStringsCustom(
      tryOnPageTitle: json['tryOnPageTitle'] as String,
      tryOn: json['tryOn'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnStringsCustomToJson(
        AiutaTryOnStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'tryOnPageTitle': instance.tryOnPageTitle,
      'tryOn': instance.tryOn,
    };
