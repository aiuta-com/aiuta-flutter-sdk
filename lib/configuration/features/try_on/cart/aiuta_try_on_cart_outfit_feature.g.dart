// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_cart_outfit_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnCartOutfitFeature _$AiutaTryOnCartOutfitFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartOutfitFeature(
      strings: AiutaTryOnCartOutfitStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      handler: toNull(json['handler']),
    );

Map<String, dynamic> _$AiutaTryOnCartOutfitFeatureToJson(
    AiutaTryOnCartOutfitFeature instance) {
  final val = <String, dynamic>{
    'strings': instance.strings,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('handler', toNull(instance.handler));
  return val;
}
