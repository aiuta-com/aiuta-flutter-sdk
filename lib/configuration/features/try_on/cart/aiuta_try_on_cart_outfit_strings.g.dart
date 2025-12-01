// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_cart_outfit_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnCartOutfitStringsBuiltIn _$AiutaTryOnCartOutfitStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartOutfitStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnCartOutfitStringsBuiltInToJson(
        AiutaTryOnCartOutfitStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaTryOnCartOutfitStringsCustom _$AiutaTryOnCartOutfitStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartOutfitStringsCustom(
      addToCartOutfit: json['addToCartOutfit'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaTryOnCartOutfitStringsCustomToJson(
        AiutaTryOnCartOutfitStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'addToCartOutfit': instance.addToCartOutfit,
    };
