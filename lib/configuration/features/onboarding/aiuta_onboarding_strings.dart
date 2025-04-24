import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_strings.g.dart';

@JsonSerializable()
class AiutaOnboardingStrings {
  /// Text for the "Next" button.
  final String onboardingButtonNext;

  /// Text for the "Start" button.
  final String onboardingButtonStart;

  AiutaOnboardingStrings({
    required this.onboardingButtonNext,
    required this.onboardingButtonStart,
  });

  /// Create a new instance of AiutaOnboardingStrings from a json map.
  factory AiutaOnboardingStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingStringsToJson(this);
}
