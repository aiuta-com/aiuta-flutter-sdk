/// Type of share event.
enum AiutaAnalyticsShareEventType {
  /// Share was initiated.
  initiated,

  /// Share was successful.
  succeeded,

  /// Share was canceled.
  canceled,

  /// Share failed due to an error.
  failed,

  /// Screenshot was taken instead of sharing.
  screenshot,
}
