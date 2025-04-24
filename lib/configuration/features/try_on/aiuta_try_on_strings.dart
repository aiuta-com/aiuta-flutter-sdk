import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_strings.g.dart';

@JsonSerializable()
class AiutaTryOnStrings {
  /// Title for the Try-On page.
  final String tryOnPageTitle;

  /// Text for the Try-On button.
  final String tryOn;

  AiutaTryOnStrings({
    required this.tryOnPageTitle,
    required this.tryOn,
  });

  /// Create a new instance of AiutaTryOnStrings from a json map.
  factory AiutaTryOnStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnStringsToJson(this);
}
