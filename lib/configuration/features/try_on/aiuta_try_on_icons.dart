import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_icons.g.dart';

/// Icons used in the try-on feature.
sealed class AiutaTryOnIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnIcons] with the specified [type].
  AiutaTryOnIcons(this.type);

  // Internal json staff
  factory AiutaTryOnIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnIcons`.
///
/// This class represents the default, built-in icons for the try-on feature.
@JsonSerializable()
class AiutaTryOnIconsBuiltIn extends AiutaTryOnIcons {
  /// Creates an instance of the built-in try-on icons.
  AiutaTryOnIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnIcons`.
///
/// This class allows for custom icons to be provided for the try-on feature.
@JsonSerializable()
class AiutaTryOnIconsCustom extends AiutaTryOnIcons {
  /// Icon for the try-on button.
  final AiutaIcon tryOn20;

  /// Creates an [AiutaTryOnIcons] with the required [tryOn20] icon for the
  /// "Try-On" buttons.
  AiutaTryOnIconsCustom({
    required this.tryOn20,
  })  : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnIconsCustomToJson(this);
}
