import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_images.g.dart';

/// Samples of good and bad input images to show in the Best Results page.
sealed class AiutaOnboardingBestResultsPageImages {
  /// The type of the images, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingBestResultsPageImages] with the specified [type].
  AiutaOnboardingBestResultsPageImages(this.type);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImages.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingBestResultsPageImagesBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingBestResultsPageImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding best results page images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingBestResultsPageImages`.
///
/// This class represents the default, built-in images for the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageImagesBuiltIn
    extends AiutaOnboardingBestResultsPageImages {
  /// Creates an instance of the built-in onboarding best results page images.
  AiutaOnboardingBestResultsPageImagesBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImagesBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageImagesBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageImagesBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingBestResultsPageImages`.
///
/// This class allows for custom images to be provided for the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageImagesCustom
    extends AiutaOnboardingBestResultsPageImages {
  /// List of good result images.
  final List<String> onboardingBestResultsGood;

  /// List of bad result images.
  final List<String> onboardingBestResultsBad;

  /// Creates an [AiutaOnboardingBestResultsPageImagesCustom] with the example
  /// of exactly 2 [onboardingBestResultsGood] images showing the samples
  /// to achieve the best results and exactly 2 [onboardingBestResultsBad]
  /// images showing bad examples of the input photos.
  AiutaOnboardingBestResultsPageImagesCustom({
    required this.onboardingBestResultsGood,
    required this.onboardingBestResultsBad,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImagesCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageImagesCustomToJson(this);
}
