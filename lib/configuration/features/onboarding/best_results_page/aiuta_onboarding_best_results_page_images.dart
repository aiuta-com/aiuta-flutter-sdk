import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_images.g.dart';

/// Samples of good and bad input images to show in the Best Results page.
@JsonSerializable()
class AiutaOnboardingBestResultsPageImages {
  /// List of good result images.
  final List<String> onboardingBestResultsGood;

  /// List of bad result images.
  final List<String> onboardingBestResultsBad;

  /// Creates an [AiutaOnboardingBestResultsPageImages] with the example
  /// of exactly 2 [onboardingBestResultsGood] images showing the samples
  /// to achieve the best results and exactly 2 [onboardingBestResultsBad]
  /// images showing bad examples of the input photos.
  AiutaOnboardingBestResultsPageImages({
    required this.onboardingBestResultsGood,
    required this.onboardingBestResultsBad,
  });

  // Internal json staff
  factory AiutaOnboardingBestResultsPageImages.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageImagesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageImagesToJson(this);
}
