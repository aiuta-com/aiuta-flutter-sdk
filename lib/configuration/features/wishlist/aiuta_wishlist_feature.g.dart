// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_wishlist_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWishlistFeature _$AiutaWishlistFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaWishlistFeature(
      icons: AiutaWishlistIcons.fromJson(json['icons'] as Map<String, dynamic>),
      strings: AiutaWishlistStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      dataProvider: toNull(json['dataProvider']),
    );

Map<String, dynamic> _$AiutaWishlistFeatureToJson(
    AiutaWishlistFeature instance) {
  final val = <String, dynamic>{
    'icons': instance.icons,
    'strings': instance.strings,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dataProvider', toNull(instance.dataProvider));
  return val;
}
