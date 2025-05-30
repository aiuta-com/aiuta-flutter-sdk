// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_wishlist_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWishlistIconsBuiltIn _$AiutaWishlistIconsBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistIconsBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWishlistIconsBuiltInToJson(
        AiutaWishlistIconsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaWishlistIconsCustom _$AiutaWishlistIconsCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistIconsCustom(
      wishlist24:
          AiutaIcon.fromJson(json['wishlist24'] as Map<String, dynamic>),
      wishlistFill24:
          AiutaIcon.fromJson(json['wishlistFill24'] as Map<String, dynamic>),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWishlistIconsCustomToJson(
        AiutaWishlistIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'wishlist24': instance.wishlist24,
      'wishlistFill24': instance.wishlistFill24,
    };
