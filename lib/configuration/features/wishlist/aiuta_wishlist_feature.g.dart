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
      dataProvider: AiutaWishlistDataProvider.fromJson(
          json['dataProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaWishlistFeatureToJson(
        AiutaWishlistFeature instance) =>
    <String, dynamic>{
      'icons': instance.icons,
      'strings': instance.strings,
      'dataProvider': instance.dataProvider,
    };
