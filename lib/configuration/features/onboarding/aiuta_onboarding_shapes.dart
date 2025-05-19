import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_shapes.g.dart';

/// This class represents the shapes used in the onboarding feature.
@JsonSerializable()
class AiutaOnboardingShapes {
  /// Shape for the large onboarding image.
  final double onboardingImageL;

  /// Shape for the small onboarding image.
  final double onboardingImageS;

  /// Creates an [AiutaOnboardingShapes] instance with the given shapes.
  AiutaOnboardingShapes({
    required this.onboardingImageL,
    required this.onboardingImageS,
  });

  // Internal json staff
  factory AiutaOnboardingShapes.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingShapesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaOnboardingShapesToJson(this);
}
