import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_strings.g.dart';

@JsonSerializable()
class AiutaTryOnGenerationsHistoryStrings {
  /// Title for the generations history page.
  final String generationsHistoryPageTitle;

  AiutaTryOnGenerationsHistoryStrings({
    required this.generationsHistoryPageTitle,
  });

  /// Create a new instance of AiutaTryOnGenerationsHistoryStrings from a json map.
  factory AiutaTryOnGenerationsHistoryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnGenerationsHistoryStringsToJson(this);
}
