import 'package:json_annotation/json_annotation.dart';

import 'aiuta_onboarding_try_on_page_images.dart';
import 'aiuta_onboarding_try_on_page_strings.dart';

part 'aiuta_onboarding_try_on_page_feature.g.dart';

@JsonSerializable()
class AiutaOnboardingTryOnPageFeature {
  /// Images used in the Try-On page.
  final AiutaOnboardingTryOnPageImages images;

  /// Strings used in the Try-On page.
  final AiutaOnboardingTryOnPageStrings strings;

  AiutaOnboardingTryOnPageFeature({
    required this.images,
    required this.strings,
  });

  /// Create a new instance of AiutaOnboardingTryOnPageFeature from a json map.
  factory AiutaOnboardingTryOnPageFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingTryOnPageFeatureToJson(this);
}
