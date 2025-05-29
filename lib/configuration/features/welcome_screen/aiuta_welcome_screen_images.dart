import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_images.g.dart';

/// This class represents the images used in the welcome screen of the Aiuta SDK.
sealed class AiutaWelcomeScreenImages {
  /// The type of the images, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWelcomeScreenImages] with the specified [type].
  AiutaWelcomeScreenImages(this.type);

  // Internal json staff
  factory AiutaWelcomeScreenImages.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWelcomeScreenImagesBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWelcomeScreenImagesCustom.fromJson(json);
      default:
        throw Exception('Unknown welcome screen images type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWelcomeScreenImages`.
///
/// This class represents the default, built-in images for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenImagesBuiltIn extends AiutaWelcomeScreenImages {
  /// Creates an instance of the built-in welcome screen images.
  AiutaWelcomeScreenImagesBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWelcomeScreenImagesBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenImagesBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWelcomeScreenImagesBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWelcomeScreenImages`.
///
/// This class allows for custom images to be provided for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenImagesCustom extends AiutaWelcomeScreenImages {
  /// Background image for the welcome screen.
  final String welcomeBackground;

  /// Creates an [AiutaWelcomeScreenImagesCustom] with the given [welcomeBackground].
  AiutaWelcomeScreenImagesCustom({
    required this.welcomeBackground,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWelcomeScreenImagesCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenImagesCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenImagesCustomToJson(this);
}
