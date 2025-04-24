import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_shapes.g.dart';

@JsonSerializable()
class AiutaOnboardingShapes {
  /// Shape for the large onboarding image.
  final double onboardingImageL;

  /// Shape for the small onboarding image.
  final double onboardingImageS;

  AiutaOnboardingShapes({
    required this.onboardingImageL,
    required this.onboardingImageS,
  });

  /// Create a new instance of AiutaOnboardingShapes from a json map.
  factory AiutaOnboardingShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingShapesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingShapesToJson(this);
}
