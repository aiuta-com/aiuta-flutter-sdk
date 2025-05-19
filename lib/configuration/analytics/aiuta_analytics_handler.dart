import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event.dart';

/// Handler for analytics events.
class AiutaAnalyticsHandler {
  /// Callback to handle analytics events.
  final void Function(AiutaAnalyticsEvent) onAnalyticsEvent;

  /// Creates an [AiutaAnalyticsHandler] with [onAnalyticsEvent] to handle
  /// analytics events.
  AiutaAnalyticsHandler({
    required this.onAnalyticsEvent,
  });
}
