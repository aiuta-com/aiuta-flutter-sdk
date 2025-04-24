import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_images.g.dart';

@JsonSerializable()
class AiutaWelcomeScreenImages {
  /// Background image for the welcome screen.
  final String welcomeBackground;

  AiutaWelcomeScreenImages({
    required this.welcomeBackground,
  });

  /// Create a new instance of AiutaWelcomeScreenImages from a json map.
  factory AiutaWelcomeScreenImages.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenImagesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenImagesToJson(this);
}
