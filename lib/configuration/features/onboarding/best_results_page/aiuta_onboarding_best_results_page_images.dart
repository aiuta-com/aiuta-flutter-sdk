import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/mode/media/aiuta_media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_images.g.dart';

/// Samples of good and bad input images to show in the Best Results page.
sealed class AiutaOnboardingBestResultsPageImages {
  /// The type of the images, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingBestResultsPageImages] with the specified [type].
  AiutaOnboardingBestResultsPageImages(this.type);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImages.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaOnboardingBestResultsPageImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding best results page images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A custom implementation of the `AiutaOnboardingBestResultsPageImages`.
///
/// This class allows for custom images to be provided for the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageImagesCustom
    extends AiutaOnboardingBestResultsPageImages {
  /// Media (image with an optional looping video) shown on the Best Results
  /// page to illustrate good and bad input examples.
  final AiutaMedia onboardingBestResultsItem;

  /// Creates an [AiutaOnboardingBestResultsPageImagesCustom] with the
  /// [onboardingBestResultsItem] media illustrating good and bad input examples.
  AiutaOnboardingBestResultsPageImagesCustom({
    required this.onboardingBestResultsItem,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImagesCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageImagesCustomToJson(this);
}
