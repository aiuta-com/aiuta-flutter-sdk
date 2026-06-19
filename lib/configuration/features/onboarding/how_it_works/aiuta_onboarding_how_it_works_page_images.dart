import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/configuration/mode/media/aiuta_media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_how_it_works_page_images.g.dart';

/// This class contains the images used in the How It Works page.
sealed class AiutaOnboardingHowItWorksPageImages {
  /// The type of the images, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaOnboardingHowItWorksPageImages] with the specified [type].
  AiutaOnboardingHowItWorksPageImages(this.type);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageImages.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingHowItWorksPageImagesBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingHowItWorksPageImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding how it works page images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaOnboardingHowItWorksPageImages`.
///
/// This class represents the default, built-in images for the How It Works page.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageImagesBuiltIn
    extends AiutaOnboardingHowItWorksPageImages {
  /// Creates an instance of the built-in onboarding how it works page images.
  AiutaOnboardingHowItWorksPageImagesBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageImagesBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageImagesBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageImagesBuiltInToJson(this);
}

/// A custom implementation of the `AiutaOnboardingHowItWorksPageImages`.
///
/// This class allows for custom images to be provided for the How It Works page.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageImagesCustom
    extends AiutaOnboardingHowItWorksPageImages {
  /// Media (looping video with a poster image) shown on the How It Works page
  /// demonstrating the try-on flow.
  final AiutaMedia onboardingHowItWorksItem;

  /// Creates an [AiutaOnboardingHowItWorksPageImagesCustom] with the
  /// [onboardingHowItWorksItem] media demonstrating the try-on flow.
  AiutaOnboardingHowItWorksPageImagesCustom({
    required this.onboardingHowItWorksItem,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageImagesCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageImagesCustomToJson(this);
}
