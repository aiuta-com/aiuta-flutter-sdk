import 'package:aiuta_flutter/configuration/features/onboarding/tryon_page/aiuta_onboarding_try_on_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/tryon_page/aiuta_onboarding_try_on_page_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_try_on_page_feature.g.dart';

/// Configuration for the Try-On page, that is the first page of the onboarding.
/// It interactively guides the user how try-on looks like.
@JsonSerializable()
class AiutaOnboardingTryOnPageFeature {
  /// Images used in the Try-On page.
  final AiutaOnboardingTryOnPageImages images;

  /// Strings used in the Try-On page.
  final AiutaOnboardingTryOnPageStrings strings;

  /// Creates an [AiutaOnboardingTryOnPageFeature] with the given [images] and
  /// [strings] used in the Try-On page.
  AiutaOnboardingTryOnPageFeature({
    required this.images,
    required this.strings,
  });

  // Internal json staff
  factory AiutaOnboardingTryOnPageFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingTryOnPageFeatureToJson(this);
}
