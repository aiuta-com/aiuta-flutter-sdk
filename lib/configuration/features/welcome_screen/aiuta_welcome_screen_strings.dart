import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_strings.g.dart';

@JsonSerializable()
class AiutaWelcomeScreenStrings {
  /// Title text for the welcome screen.
  final String welcomeTitle;

  /// Description text for the welcome screen.
  final String welcomeDescription;

  /// Button text for the start button.
  final String welcomeButtonStart;

  AiutaWelcomeScreenStrings({
    required this.welcomeTitle,
    required this.welcomeDescription,
    required this.welcomeButtonStart,
  });

  /// Create a new instance of AiutaWelcomeScreenStrings from a json map.
  factory AiutaWelcomeScreenStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenStringsToJson(this);
}
