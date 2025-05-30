import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_strings.g.dart';

/// This class represents the strings used in the welcome screen of the Aiuta SDK.
sealed class AiutaWelcomeScreenStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWelcomeScreenStrings] with the specified [type].
  AiutaWelcomeScreenStrings(this.type);

  // Internal json staff
  factory AiutaWelcomeScreenStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWelcomeScreenStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWelcomeScreenStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown welcome screen strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWelcomeScreenStrings`.
///
/// This class represents the default, built-in strings for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenStringsBuiltIn extends AiutaWelcomeScreenStrings {
  /// Creates an instance of the built-in welcome screen strings.
  AiutaWelcomeScreenStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWelcomeScreenStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWelcomeScreenStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWelcomeScreenStrings`.
///
/// This class allows for custom strings to be provided for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenStringsCustom extends AiutaWelcomeScreenStrings {
  /// Title text for the welcome screen.
  final String welcomeTitle;

  /// Description text for the welcome screen.
  final String welcomeDescription;

  /// Button text for the start button.
  final String welcomeButtonStart;

  /// Creates an [AiutaWelcomeScreenStringsCustom] with the given parameters for the
  /// [welcomeTitle], [welcomeDescription], and [welcomeButtonStart] used in the
  /// welcome screen.
  AiutaWelcomeScreenStringsCustom({
    required this.welcomeTitle,
    required this.welcomeDescription,
    required this.welcomeButtonStart,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWelcomeScreenStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWelcomeScreenStringsCustomToJson(this);
}
