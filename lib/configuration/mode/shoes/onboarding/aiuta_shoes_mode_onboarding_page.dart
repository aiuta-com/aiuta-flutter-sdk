import 'package:aiuta_flutter/configuration/mode/media/aiuta_media.dart';
import 'package:aiuta_flutter/configuration/mode/shoes/onboarding/aiuta_shoes_mode_onboarding_page_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_onboarding_page.g.dart';

/// Shoes-mode overrides for the onboarding "best results" page.
@JsonSerializable()
class AiutaShoesModeOnboardingPage {
  /// Sample media (image with an optional looping video) shown on the
  /// shoes-mode best results page.
  final AiutaMedia images;

  /// Text strings for the shoes-mode best results page.
  final AiutaShoesModeOnboardingPageStrings strings;

  /// Creates an [AiutaShoesModeOnboardingPage] with the sample [images] and
  /// the [strings] for the shoes-mode best results page.
  AiutaShoesModeOnboardingPage({
    required this.images,
    required this.strings,
  });

  // Internal json staff
  factory AiutaShoesModeOnboardingPage.fromJson(Map<String, dynamic> json) =>
      _$AiutaShoesModeOnboardingPageFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShoesModeOnboardingPageToJson(this);
}
