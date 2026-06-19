import 'package:json_annotation/json_annotation.dart';

/// Try-on mode carried by every analytics event, matching the mode of the
/// launched flow.
enum AiutaAnalyticsMode {
  /// General try-on mode.
  @JsonValue('general')
  general,

  /// Shoes try-on mode.
  @JsonValue('shoes')
  shoes,
}
