import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_shapes.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_strings.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/best_results_page/aiuta_onboarding_best_results_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_feature.g.dart';

/// This class represents the onboarding feature for the Aiuta app.
@JsonSerializable()
class AiutaOnboardingFeature {
  /// Configuration for the How It Works page, that is the first page of the onboarding.
  /// This page is mandatory and cannot be null.
  /// It interactively shows the user how the virtual try-on looks like.
  final AiutaOnboardingHowItWorksPageFeature howItWorksPage;

  /// Configuration for the Best Results page (optional).
  /// This page is shown after the Try-On page and provides
  /// examples of the photos to achieve the best results.
  ///
  /// It is recommended to not include this page in the onboarding
  /// as the Image Picker page also has examples of the photos
  /// to achieve the best results for the try-on.
  final AiutaOnboardingBestResultsPageFeature? bestResultsPage;

  /// Strings used in the onboarding feature.
  final AiutaOnboardingStrings strings;

  /// Shapes used in the onboarding feature.
  final AiutaOnboardingShapes shapes;

  /// Creates an [AiutaOnboardingFeature] with the given parameters for the
  /// required [howItWorksPage], optional [bestResultsPage], and the common
  /// [shapes] and [strings] used in the all onboarding pages.
  AiutaOnboardingFeature({
    required this.howItWorksPage,
    this.bestResultsPage,
    required this.strings,
    required this.shapes,
  });

  // Internal json staff
  factory AiutaOnboardingFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaOnboardingFeatureToJson(this);
}
