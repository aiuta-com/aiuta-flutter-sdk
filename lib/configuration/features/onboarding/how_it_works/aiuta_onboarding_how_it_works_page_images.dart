import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
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
  /// List of [OnboardingHowItWorksItem] with their photos and previews.
  /// This list should contain exactly 3 items.
  final List<OnboardingHowItWorksItem> onboardingHowItWorksItems;

  /// Creates an [AiutaOnboardingHowItWorksPageImagesCustom] with the given exact 3
  /// items in the [onboardingHowItWorksItems] with their photos and previews.
  AiutaOnboardingHowItWorksPageImagesCustom({
    required this.onboardingHowItWorksItems,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageImagesCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingHowItWorksPageImagesCustomToJson(this);
}

/// This class contains the photo and preview of a Try-On example
/// explaining how the Try-On feature works.
@JsonSerializable()
class OnboardingHowItWorksItem {
  /// Try-On example image for the item.
  ///
  /// All images should be the same person in the same pose wearing [itemPreview].
  /// It's better to generate this images with the Aiuta.
  final String itemPhoto;

  /// Flatlay image for the item with transparent background.
  final String itemPreview;

  /// Creates an [OnboardingHowItWorksItem] with the given [itemPhoto] and
  /// [itemPreview] that should match the [itemPhoto].
  ///
  /// All [OnboardingHowItWorksItem] should contain [itemPhoto] of the same person
  /// in the same pose wearing [itemPreview].
  OnboardingHowItWorksItem({
    required this.itemPhoto,
    required this.itemPreview,
  });

  // Internal json staff
  factory OnboardingHowItWorksItem.fromJson(Map<String, dynamic> json) =>
      _$OnboardingHowItWorksItemFromJson(json);

  Map<String, dynamic> toJson() => _$OnboardingHowItWorksItemToJson(this);
}
