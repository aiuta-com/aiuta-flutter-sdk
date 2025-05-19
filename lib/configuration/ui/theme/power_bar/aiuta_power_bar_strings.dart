import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_strings.g.dart';

/// Strings used in the `powered by` bar.
@JsonSerializable()
class AiutaPowerBarStrings {
  /// Text for the "Powered by Aiuta" label.
  final String poweredByAiuta;

  /// Creates an [AiutaPowerBarStrings] with the given [poweredByAiuta] text.
  AiutaPowerBarStrings({
    required this.poweredByAiuta,
  });

  // Internal json staff
  factory AiutaPowerBarStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPowerBarStringsToJson(this);
}
