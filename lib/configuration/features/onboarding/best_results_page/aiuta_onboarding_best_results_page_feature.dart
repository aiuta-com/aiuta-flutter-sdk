import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_toggles.dart';

part 'aiuta_onboarding_best_results_page_feature.g.dart';

@JsonSerializable()
class AiutaOnboardingBestResultsPageFeature {
  /// Images used in the Best Results page.
  final AiutaOnboardingBestResultsPageImages images;

  /// Icons used in the Best Results page.
  final AiutaOnboardingBestResultsPageIcons icons;

  /// Strings used in the Best Results page.
  final AiutaOnboardingBestResultsPageStrings strings;

  /// Toggles used in the Best Results page.
  final AiutaOnboardingBestResultsPageToggles toggles;

  AiutaOnboardingBestResultsPageFeature({
    required this.images,
    required this.icons,
    required this.strings,
    required this.toggles,
  });

  /// Create a new instance of AiutaOnboardingBestResultsPageFeature from a json map.
  factory AiutaOnboardingBestResultsPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageFeatureToJson(this);
}
