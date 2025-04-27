import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event.dart';

class AiutaAnalyticsHandler {
  /// Callback to handle analytics events.
  final void Function(AiutaAnalyticsEvent) onAnalyticsEvent;

  AiutaAnalyticsHandler({
    required this.onAnalyticsEvent,
  });
}
