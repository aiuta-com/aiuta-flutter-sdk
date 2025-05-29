import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_how_it_works_page_strings.g.dart';

/// This class represents the strings used in the How It Works page of the Aiuta onboarding process.
sealed class AiutaOnboardingHowItWorksPageStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingHowItWorksPageStrings] with the specified [type].
  AiutaOnboardingHowItWorksPageStrings(this.type);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingHowItWorksPageStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingHowItWorksPageStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding how it works page strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingHowItWorksPageStrings`.
///
/// This class represents the default, built-in strings for the How It Works page.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageStringsBuiltIn extends AiutaOnboardingHowItWorksPageStrings {
  /// Creates an instance of the built-in onboarding how it works page strings.
  AiutaOnboardingHowItWorksPageStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingHowItWorksPageStrings`.
///
/// This class allows for custom strings to be provided for the How It Works page.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageStringsCustom extends AiutaOnboardingHowItWorksPageStrings {
  /// Title for the How It Works page (nullable).
  final String? onboardingHowItWorksPageTitle;

  /// Title for the How It Works section.
  final String onboardingHowItWorksTitle;

  /// Description for the How It Works section.
  final String onboardingHowItWorksDescription;

  /// Creates an [AiutaOnboardingHowItWorksPageStringsCustom] instance with the given strings.
  AiutaOnboardingHowItWorksPageStringsCustom({
    this.onboardingHowItWorksPageTitle,
    required this.onboardingHowItWorksTitle,
    required this.onboardingHowItWorksDescription,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageStringsCustomToJson(this);
}
