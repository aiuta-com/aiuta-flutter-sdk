// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_page_bar_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaPageBarIconsBuiltIn _$AiutaPageBarIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaPageBarIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPageBarIconsBuiltInToJson(
        AiutaPageBarIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaPageBarIconsCustom _$AiutaPageBarIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaPageBarIconsCustom(
      back24: AiutaIcon.fromJson(json['back24'] as Map<String, dynamic>),
      close24: AiutaIcon.fromJson(json['close24'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaPageBarIconsCustomToJson(
        AiutaPageBarIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'back24': instance.back24,
      'close24': instance.close24,
    };
