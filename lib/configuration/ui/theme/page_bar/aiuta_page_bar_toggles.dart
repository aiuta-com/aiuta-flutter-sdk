import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_toggles.g.dart';

/// Configuration for the page bar appearance toggles.
@JsonSerializable()
class AiutaPageBarToggles {
  /// Whether to prefer the close button on the right.
  final bool preferCloseButtonOnTheRight;

  /// Creates an [AiutaPageBarToggles] with a preference for the close button
  /// positioning on the right [preferCloseButtonOnTheRight].
  AiutaPageBarToggles({
    required this.preferCloseButtonOnTheRight,
  });

  /// Creates a built-in page bar toggles configuration with default settings.
  factory AiutaPageBarToggles.builtIn() {
    return AiutaPageBarToggles(
      preferCloseButtonOnTheRight: false,
    );
  }

  // Internal json staff
  factory AiutaPageBarToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTogglesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPageBarTogglesToJson(this);
}
