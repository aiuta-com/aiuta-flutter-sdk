import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_icons.g.dart';

@JsonSerializable()
class AiutaTryOnGenerationsHistoryIcons {
  /// Icon for the generations history.
  final AiutaIcon history24;

  AiutaTryOnGenerationsHistoryIcons({
    required this.history24,
  });

  /// Create a new instance of AiutaTryOnGenerationsHistoryIcons from a json map.
  factory AiutaTryOnGenerationsHistoryIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnGenerationsHistoryIconsToJson(this);
}
