import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_how_it_works_page_images.g.dart';

/// This class contains the images used in the How It Works page.
@JsonSerializable()
class AiutaOnboardingHowItWorksPageImages {
  /// List of [OnboardingHowItWorksItem] with their photos and previews.
  /// This list should contain exactly 3 items.
  final List<OnboardingHowItWorksItem> onboardingHowItWorksItems;

  /// Creates an [AiutaOnboardingHowItWorksPageImages] with the given exact 3
  /// items in the [onboardingHowItWorksItems] with their photos and previews.
  AiutaOnboardingHowItWorksPageImages({
    required this.onboardingHowItWorksItems,
  });

  // Internal json staff
  factory AiutaOnboardingHowItWorksPageImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingHowItWorksPageImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaOnboardingHowItWorksPageImagesToJson(this);
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
