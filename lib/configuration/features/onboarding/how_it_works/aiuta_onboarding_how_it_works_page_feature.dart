import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_how_it_works_page_feature.g.dart';

/// Configuration for the How It Works page, that is the first page of the onboarding.
/// It interactively guides the user how try-on looks like.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageFeature {
  /// Images used in the How It Works page.
  final AiutaOnboardingHowItWorksPageImages images;

  /// Strings used in the How It Works page.
  final AiutaOnboardingHowItWorksPageStrings strings;

  /// Creates an [AiutaOnboardingHowItWorksPageFeature] with the given [images] and
  /// [strings] used in the Try-On page.
  AiutaOnboardingHowItWorksPageFeature({
    required this.images,
    required this.strings,
  });

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageFeatureToJson(this);
}
