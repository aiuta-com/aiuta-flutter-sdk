import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_strings.g.dart';

@JsonSerializable()
class AiutaShareStrings {
  /// Text for the share button.
  final String shareButton;

  AiutaShareStrings({
    required this.shareButton,
  });

  /// Create a new instance of AiutaShareStrings from a json map.
  factory AiutaShareStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaShareStringsToJson(this);
}
