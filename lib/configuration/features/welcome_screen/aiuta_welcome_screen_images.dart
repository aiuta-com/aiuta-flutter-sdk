import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_images.g.dart';

/// This class represents the images used in the welcome screen of the Aiuta SDK.
@JsonSerializable()
class AiutaWelcomeScreenImages {
  /// Background image for the welcome screen.
  final String welcomeBackground;

  /// Creates an [AiutaWelcomeScreenImages] with the given [welcomeBackground].
  AiutaWelcomeScreenImages({
    required this.welcomeBackground,
  });

  // Internal json staff
  factory AiutaWelcomeScreenImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenImagesToJson(this);
}
