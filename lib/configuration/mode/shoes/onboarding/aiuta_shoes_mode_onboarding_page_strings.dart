import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_onboarding_page_strings.g.dart';

/// Strings used in the shoes-mode onboarding "best results" page.
sealed class AiutaShoesModeOnboardingPageStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaShoesModeOnboardingPageStrings] with the specified [type].
  AiutaShoesModeOnboardingPageStrings(this.type);

  // Internal json staff
  factory AiutaShoesModeOnboardingPageStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShoesModeOnboardingPageStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaShoesModeOnboardingPageStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown shoes mode onboarding page strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaShoesModeOnboardingPageStrings`.
@JsonSerializable()
class AiutaShoesModeOnboardingPageStringsBuiltIn
    extends AiutaShoesModeOnboardingPageStrings {
  /// Creates an instance of the built-in shoes mode onboarding page strings.
  AiutaShoesModeOnboardingPageStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShoesModeOnboardingPageStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeOnboardingPageStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeOnboardingPageStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaShoesModeOnboardingPageStrings`.
@JsonSerializable()
class AiutaShoesModeOnboardingPageStringsCustom
    extends AiutaShoesModeOnboardingPageStrings {
  /// Title for the best results page (nullable).
  final String? onboardingShoesBestResultsPageTitle;

  /// Title for the best results section.
  final String onboardingShoesBestResultsTitle;

  /// Description for the best results section.
  final String onboardingShoesBestResultsDescription;

  /// Creates an [AiutaShoesModeOnboardingPageStringsCustom] with the given strings.
  AiutaShoesModeOnboardingPageStringsCustom({
    this.onboardingShoesBestResultsPageTitle,
    required this.onboardingShoesBestResultsTitle,
    required this.onboardingShoesBestResultsDescription,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShoesModeOnboardingPageStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeOnboardingPageStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeOnboardingPageStringsCustomToJson(this);
}
