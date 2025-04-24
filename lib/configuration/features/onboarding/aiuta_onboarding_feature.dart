import 'package:aiuta_flutter/configuration/features/onboarding/tryon_page/aiuta_onboarding_try_on_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_feature.dart';
import 'package:json_annotation/json_annotation.dart';
import 'aiuta_onboarding_strings.dart';
import 'aiuta_onboarding_shapes.dart';

part 'aiuta_onboarding_feature.g.dart';

@JsonSerializable()
class AiutaOnboardingFeature {
  /// Feature for the Try-On page.
  final AiutaOnboardingTryOnPageFeature tryOnPage;

  /// Feature for the Best Results page (nullable).
  final AiutaOnboardingBestResultsPageFeature? bestResultsPage;

  /// Strings used in the onboarding feature.
  final AiutaOnboardingStrings strings;

  /// Shapes used in the onboarding feature.
  final AiutaOnboardingShapes shapes;

  AiutaOnboardingFeature({
    required this.tryOnPage,
    this.bestResultsPage,
    required this.strings,
    required this.shapes,
  });

  /// Create a new instance of AiutaOnboardingFeature from a json map.
  factory AiutaOnboardingFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingFeatureToJson(this);
}

