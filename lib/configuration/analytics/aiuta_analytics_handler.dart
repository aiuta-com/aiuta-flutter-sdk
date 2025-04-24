import 'package:aiuta_flutter/models/analytic/aiuta_analytic_event.dart';

class AiutaAnalyticsHandler {
  /// Callback to handle analytics events.
  final void Function(AiutaAnalyticEvent) onAnalyticsEvent;

  AiutaAnalyticsHandler({
    required this.onAnalyticsEvent,
  });
}
