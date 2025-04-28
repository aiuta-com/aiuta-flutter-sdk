import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics_handler.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_analytics.g.dart';

/// Configuration to receive events from the SDK and send them to your analytics provider.
@JsonSerializable()
class AiutaAnalytics {
  /// Handler for analytics events.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaAnalyticsHandler handler;

  /// Creates an [AiutaAnalytics] with [handler] to receive events from the SDK
  AiutaAnalytics({
    required this.handler,
  });

  // Internal json staff
  factory AiutaAnalytics.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaAnalyticsToJson(this);
}
