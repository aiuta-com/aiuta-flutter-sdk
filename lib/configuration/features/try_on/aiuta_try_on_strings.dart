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

  // Internal json staff
  factory AiutaTryOnStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnStringsToJson(this);
}
