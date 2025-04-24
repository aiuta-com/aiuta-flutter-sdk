import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_toggles.g.dart';

@JsonSerializable()
class AiutaPageBarToggles {
  /// Whether to prefer the close button on the right.
  final bool preferCloseButtonOnTheRight;

  AiutaPageBarToggles({
    required this.preferCloseButtonOnTheRight,
  });

  /// Create a new instance of AiutaPageBarToggles from a json map.
  factory AiutaPageBarToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTogglesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPageBarTogglesToJson(this);
}