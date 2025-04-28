import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_strings.g.dart';

@JsonSerializable()
class AiutaTryOnGenerationsHistoryStrings {
  /// Title for the generations history page.
  final String generationsHistoryPageTitle;

  AiutaTryOnGenerationsHistoryStrings({
    required this.generationsHistoryPageTitle,
  });

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnGenerationsHistoryStringsToJson(this);
}
