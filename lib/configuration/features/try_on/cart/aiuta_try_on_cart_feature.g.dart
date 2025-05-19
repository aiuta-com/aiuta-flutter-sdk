// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_cart_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnCartFeature _$AiutaTryOnCartFeatureFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnCartFeature(
      strings: AiutaTryOnCartStrings.fromJson(
          json['strings'] as Map<String, dynamic>),
      handler: toNull(json['handler']),
    );

Map<String, dynamic> _$AiutaTryOnCartFeatureToJson(
    AiutaTryOnCartFeature instance) {
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
