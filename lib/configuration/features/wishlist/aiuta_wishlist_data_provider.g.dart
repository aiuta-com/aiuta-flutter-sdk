// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_wishlist_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWishlistDataProviderCustom _$AiutaWishlistDataProviderCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistDataProviderCustom(
      wishlistProductIds: toNull(json['wishlistProductIds']),
      setProductInWishlist: toNull(json['setProductInWishlist']),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaWishlistDataProviderCustomToJson(
    AiutaWishlistDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wishlistProductIds', toNull(instance.wishlistProductIds));
  writeNotNull('setProductInWishlist', toNull(instance.setProductInWishlist));
  return val;
}

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
