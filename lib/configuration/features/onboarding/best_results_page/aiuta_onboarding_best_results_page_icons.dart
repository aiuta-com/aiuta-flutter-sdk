import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_icons.g.dart';

/// Icons used in the best results page of the onboarding feature.
sealed class AiutaOnboardingBestResultsPageIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingBestResultsPageIcons] with the specified [type].
  AiutaOnboardingBestResultsPageIcons(this.type);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageIcons.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingBestResultsPageIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingBestResultsPageIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding best results page icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingBestResultsPageIcons`.
///
/// This class represents the default, built-in icons for the best results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageIconsBuiltIn
    extends AiutaOnboardingBestResultsPageIcons {
  /// Creates an instance of the built-in onboarding best results page icons.
  AiutaOnboardingBestResultsPageIconsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingBestResultsPageIcons`.
///
/// This class allows for custom icons to be provided for the best results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageIconsCustom
    extends AiutaOnboardingBestResultsPageIcons {
  /// Icon for the best results page.
  final AiutaIcon onboardingBestResultsGood24;

  /// Icon for bad results.
  final AiutaIcon onboardingBestResultsBad24;

  AiutaOnboardingBestResultsPageIconsCustom({
    required this.onboardingBestResultsGood24,
    required this.onboardingBestResultsBad24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageIconsCustomToJson(this);
}
