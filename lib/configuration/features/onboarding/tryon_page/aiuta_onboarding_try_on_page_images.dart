import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_try_on_page_images.g.dart';

/// This class contains the images used in the Try-On onboarding page.
@JsonSerializable()
class AiutaOnboardingTryOnPageImages {
  /// List of Try-On items with their photos and previews.
  /// This list should contain exactly 3 items.
  final List<OnboardingTryOnItem> onboardingTryOnItems;

  /// Creates an [AiutaOnboardingTryOnPageImages] with the given exact 3
  /// items in the [onboardingTryOnItems] with their photos and previews.
  AiutaOnboardingTryOnPageImages({
    required this.onboardingTryOnItems,
  });

  // Internal json staff
  factory AiutaOnboardingTryOnPageImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaOnboardingTryOnPageImagesToJson(this);
}

/// This class contains the photo and preview of a Try-On item example
/// explaining how the Try-On feature works.
@JsonSerializable()
class OnboardingTryOnItem {
  /// Photo of the item.
  ///
  /// All photos should be the same person in the same pose wearing [itemPreview].
  /// It's better to generate this photos with the Aiuta.
  final String itemPhoto;

  /// Preview of the item.
  final String itemPreview;

  /// Creates an [OnboardingTryOnItem] with the given [itemPhoto] and
  /// [itemPreview] that should match the [itemPhoto].
  ///
  /// All [OnboardingTryOnItem] should contain [itemPhoto] of the same person
  /// in the same pose wearing [itemPreview].
  OnboardingTryOnItem({
    required this.itemPhoto,
    required this.itemPreview,
  });

  // Internal json staff
  factory OnboardingTryOnItem.fromJson(Map<String, dynamic> json) =>
      _$OnboardingTryOnItemFromJson(json);

  Map<String, dynamic> toJson() => _$OnboardingTryOnItemToJson(this);
}
