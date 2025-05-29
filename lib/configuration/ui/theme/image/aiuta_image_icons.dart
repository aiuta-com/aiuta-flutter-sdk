import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_icons.g.dart';

/// This contains the icons for the image views.
sealed class AiutaImageIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaImageIcons] with the specified [type].
  AiutaImageIcons(this.type);

  // Internal json staff
  factory AiutaImageIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImageIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImageIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown image icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImageIcons`.
///
/// This class represents the default, built-in icons for the image views.
@JsonSerializable()
class AiutaImageIconsBuiltIn extends AiutaImageIcons {
  /// Creates an instance of the built-in image icons.
  AiutaImageIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImageIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImageIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImageIcons`.
///
/// This class allows for custom icons to be provided for the image views.
@JsonSerializable()
class AiutaImageIconsCustom extends AiutaImageIcons {
  /// Error icon with size 36.
  final AiutaIcon imageError36;

  /// Create an [AiutaImageIconsCustom] with the given [imageError36] icon
  /// to indicate images that are failed to load.
  AiutaImageIconsCustom({
    required this.imageError36,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImageIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImageIconsCustomToJson(this);
}
