import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_strings.dart';

part 'aiuta_onboarding_best_results_page_feature.g.dart';

/// Configuration for the Best Results page (optional).
/// This page is shown after the Try-On page and provides
/// examples of the photos to achieve the best results.
@JsonSerializable()
class AiutaOnboardingBestResultsPageFeature {
  /// Images used in the Best Results page.
  final AiutaOnboardingBestResultsPageImages images;

  /// Strings used in the Best Results page.
  final AiutaOnboardingBestResultsPageStrings strings;

  /// Creates an [AiutaOnboardingBestResultsPageFeature] with the example [images]
  /// showing the samples to achieve the best results and the [strings] used in
  /// the page.
  AiutaOnboardingBestResultsPageFeature({
    required this.images,
    required this.strings,
  });

  // Internal json staff
  factory AiutaOnboardingBestResultsPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageFeatureToJson(this);
}
