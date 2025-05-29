import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_strings.g.dart';

/// This class represents the strings used in the Best Results page of the onboarding process.
sealed class AiutaOnboardingBestResultsPageStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingBestResultsPageStrings] with the specified [type].
  AiutaOnboardingBestResultsPageStrings(this.type);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingBestResultsPageStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingBestResultsPageStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding best results page strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingBestResultsPageStrings`.
///
/// This class represents the default, built-in strings for the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageStringsBuiltIn extends AiutaOnboardingBestResultsPageStrings {
  /// Creates an instance of the built-in onboarding best results page strings.
  AiutaOnboardingBestResultsPageStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingBestResultsPageStrings`.
///
/// This class allows for custom strings to be provided for the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageStringsCustom extends AiutaOnboardingBestResultsPageStrings {
  /// Title for the Best Results page (nullable).
  final String? onboardingBestResultsPageTitle;

  /// Title for the Best Results section.
  final String onboardingBestResultsTitle;

  /// Description for the Best Results section.
  final String onboardingBestResultsDescription;

  /// Creates an [AiutaOnboardingBestResultsPageStringsCustom] with the given strings.
  AiutaOnboardingBestResultsPageStringsCustom({
    this.onboardingBestResultsPageTitle,
    required this.onboardingBestResultsTitle,
    required this.onboardingBestResultsDescription,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageStringsCustomToJson(this);
}
