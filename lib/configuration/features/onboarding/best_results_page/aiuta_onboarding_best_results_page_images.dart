import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_images.g.dart';

@JsonSerializable()
class AiutaOnboardingBestResultsPageImages {
  /// List of good result images.
  final List<String> onboardingBestResultsGood;

  /// List of bad result images.
  final List<String> onboardingBestResultsBad;

  AiutaOnboardingBestResultsPageImages({
    required this.onboardingBestResultsGood,
    required this.onboardingBestResultsBad,
  });

  /// Create a new instance of AiutaOnboardingBestResultsPageImages from a json map.
  factory AiutaOnboardingBestResultsPageImages.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageImagesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageImagesToJson(this);
}
