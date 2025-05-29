import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_strings.g.dart';

/// This class represents the common strings used for all pages in the onboarding feature.
sealed class AiutaOnboardingStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingStrings] with the specified [type].
  AiutaOnboardingStrings(this.type);

  // Internal json staff
  factory AiutaOnboardingStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingStrings`.
///
/// This class represents the default, built-in strings for the onboarding feature.
@JsonSerializable()
class AiutaOnboardingStringsBuiltIn extends AiutaOnboardingStrings {
  /// Creates an instance of the built-in onboarding strings.
  AiutaOnboardingStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaOnboardingStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingStrings`.
///
/// This class allows for custom strings to be provided for the onboarding feature.
@JsonSerializable()
class AiutaOnboardingStringsCustom extends AiutaOnboardingStrings {
  /// Text for the "Next" button.
  final String onboardingButtonNext;

  /// Text for the "Start" button.
  final String onboardingButtonStart;

  /// Creates an [AiutaOnboardingStringsCustom] instance with the given strings.
  AiutaOnboardingStringsCustom({
    required this.onboardingButtonNext,
    required this.onboardingButtonStart,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaOnboardingStringsCustomToJson(this);
}
