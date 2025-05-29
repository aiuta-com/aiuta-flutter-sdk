import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_icons.g.dart';

/// Icons used in the welcome screen feature.
sealed class AiutaWelcomeScreenIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWelcomeScreenIcons] with the specified [type].
  AiutaWelcomeScreenIcons(this.type);

  // Internal json staff
  factory AiutaWelcomeScreenIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWelcomeScreenIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWelcomeScreenIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown welcome screen icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWelcomeScreenIcons`.
///
/// This class represents the default, built-in icons for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenIconsBuiltIn extends AiutaWelcomeScreenIcons {
  /// Creates an instance of the built-in welcome screen icons.
  AiutaWelcomeScreenIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWelcomeScreenIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWelcomeScreenIcons`.
///
/// This class allows for custom icons to be provided for the welcome screen feature.
@JsonSerializable()
class AiutaWelcomeScreenIconsCustom extends AiutaWelcomeScreenIcons {
  /// Icon for the welcome screen.
  final AiutaIcon welcome82;

  /// Creates an [AiutaWelcomeScreenIcons] with the given [welcome82] icon.
  AiutaWelcomeScreenIconsCustom({
    required this.welcome82,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWelcomeScreenIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenIconsCustomToJson(this);
}
