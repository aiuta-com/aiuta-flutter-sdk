// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_analytics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaAnalytics _$AiutaAnalyticsFromJson(Map<String, dynamic> json) =>
    AiutaAnalytics(
      handler: toNull(json['handler']),
    );

Map<String, dynamic> _$AiutaAnalyticsToJson(AiutaAnalytics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('handler', toNull(instance.handler));
  return val;
}
