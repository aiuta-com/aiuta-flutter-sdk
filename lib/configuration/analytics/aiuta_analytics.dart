import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics_handler.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_analytics.g.dart';

@JsonSerializable()
class AiutaAnalytics {
  /// Handler for analytics events.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaAnalyticsHandler handler;

  AiutaAnalytics({
    required this.handler,
  });

  factory AiutaAnalytics.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaAnalyticsToJson(this);
}
