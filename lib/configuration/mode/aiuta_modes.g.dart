// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_modes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaModes _$AiutaModesFromJson(Map<String, dynamic> json) => AiutaModes(
      shoes: json['shoes'] == null
          ? null
          : AiutaShoesMode.fromJson(json['shoes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaModesToJson(AiutaModes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shoes', instance.shoes);
  return val;
}
