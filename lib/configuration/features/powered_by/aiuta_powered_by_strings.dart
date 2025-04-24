import 'package:json_annotation/json_annotation.dart';

part 'aiuta_powered_by_strings.g.dart';

@JsonSerializable()
class AiutaPoweredByStrings {
  /// Text for the "Powered by Aiuta" label.
  final String poweredByAiuta;

  AiutaPoweredByStrings({
    required this.poweredByAiuta,
  });

  /// Create a new instance of AiutaPoweredByStrings from a json map.
  factory AiutaPoweredByStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaPoweredByStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPoweredByStringsToJson(this);
}
