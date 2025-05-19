import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_styles.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_strings.dart';

part 'aiuta_onboarding_best_results_page_feature.g.dart';

/// Configuration for the Best Results page (optional).
/// This page is shown after the Try-On page and provides
/// examples of the photos to achieve the best results.
@JsonSerializable()
class AiutaOnboardingBestResultsPageFeature {
  /// Images used in the Best Results page.
  final AiutaOnboardingBestResultsPageImages images;

  /// Icons used in the Best Results page.
  final AiutaOnboardingBestResultsPageIcons icons;

  /// Strings used in the Best Results page.
  final AiutaOnboardingBestResultsPageStrings strings;

  /// Styles fine-tuning the Best Results page.
  final AiutaOnboardingBestResultsPageStyles styles;

  /// Creates an [AiutaOnboardingBestResultsPageFeature] with the example [images]
  /// showing tha samples to achieve the best results, [icons] used in the to
  /// indicate good and bad examples, [string] used in the page and [styles] to
  /// fine-tune the page.
  AiutaOnboardingBestResultsPageFeature({
    required this.images,
    required this.icons,
    required this.strings,
    required this.styles,
  });

  // Internal json staff
  factory AiutaOnboardingBestResultsPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageFeatureToJson(this);
}
