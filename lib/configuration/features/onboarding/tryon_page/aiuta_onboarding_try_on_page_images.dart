import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_try_on_page_images.g.dart';

@JsonSerializable()
class AiutaOnboardingTryOnPageImages {
  /// List of Try-On items with their photos and previews.
  final List<OnboardingTryOnItem> onboardingTryOnItems;

  AiutaOnboardingTryOnPageImages({
    required this.onboardingTryOnItems,
  });

  /// Create a new instance of AiutaOnboardingTryOnPageImages from a json map.
  factory AiutaOnboardingTryOnPageImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaOnboardingTryOnPageImagesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaOnboardingTryOnPageImagesToJson(this);
}

@JsonSerializable()
class OnboardingTryOnItem {
  /// Photo of the item.
  final String itemPhoto;

  /// Preview of the item.
  final String itemPreview;

  OnboardingTryOnItem({
    required this.itemPhoto,
    required this.itemPreview,
  });

  /// Create a new instance of OnboardingTryOnItem from a json map.
  factory OnboardingTryOnItem.fromJson(Map<String, dynamic> json) =>
      _$OnboardingTryOnItemFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$OnboardingTryOnItemToJson(this);
}
