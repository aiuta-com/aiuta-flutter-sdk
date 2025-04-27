import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_strings.g.dart';

/// This class represents the strings used in the welcome screen of the Aiuta SDK.
@JsonSerializable()
class AiutaWelcomeScreenStrings {
  /// Title text for the welcome screen.
  final String welcomeTitle;

  /// Description text for the welcome screen.
  final String welcomeDescription;

  /// Button text for the start button.
  final String welcomeButtonStart;

  /// Creates an [AiutaWelcomeScreenStrings] with the given parameters for the
  /// [welcomeTitle], [welcomeDescription], and [welcomeButtonStart] used in the
  /// welcome screen.
  AiutaWelcomeScreenStrings({
    required this.welcomeTitle,
    required this.welcomeDescription,
    required this.welcomeButtonStart,
  });

  // Internal json staff
  factory AiutaWelcomeScreenStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenStringsToJson(this);
}
