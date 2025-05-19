import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_strings.g.dart';

/// This class represents the common strings used for all pages in the onboarding feature.
@JsonSerializable()
class AiutaOnboardingStrings {
  /// Text for the "Next" button.
  final String onboardingButtonNext;

  /// Text for the "Start" button.
  final String onboardingButtonStart;

  /// Creates an [AiutaOnboardingStrings] instance with the given strings.
  AiutaOnboardingStrings({
    required this.onboardingButtonNext,
    required this.onboardingButtonStart,
  });

  // Internal json staff
  factory AiutaOnboardingStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaOnboardingStringsToJson(this);
}
