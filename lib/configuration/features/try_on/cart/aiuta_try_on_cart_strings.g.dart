// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_cart_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnCartStringsBuiltIn _$AiutaTryOnCartStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnCartStringsBuiltInToJson(
        AiutaTryOnCartStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnCartStringsCustom _$AiutaTryOnCartStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartStringsCustom(
      addToCart: json['addToCart'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnCartStringsCustomToJson(
        AiutaTryOnCartStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'addToCart': instance.addToCart,
    };
