// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_wishlist_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWishlistStringsBuiltIn _$AiutaWishlistStringsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistStringsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWishlistStringsBuiltInToJson(
        AiutaWishlistStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWishlistStringsCustom _$AiutaWishlistStringsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistStringsCustom(
      wishlistButtonAdd: json['wishlistButtonAdd'] as String,
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWishlistStringsCustomToJson(
        AiutaWishlistStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'wishlistButtonAdd': instance.wishlistButtonAdd,
    };
