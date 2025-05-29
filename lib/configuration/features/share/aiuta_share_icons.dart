import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_icons.g.dart';

/// Icons used in the share feature.
sealed class AiutaShareIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaShareIcons] with the specified [type].
  AiutaShareIcons(this.type);

  // Internal json staff
  factory AiutaShareIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShareIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaShareIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown share icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaShareIcons`.
///
/// This class represents the default, built-in icons for the share feature.
@JsonSerializable()
class AiutaShareIconsBuiltIn extends AiutaShareIcons {
  /// Creates an instance of the built-in share icons.
  AiutaShareIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShareIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaShareIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaShareIcons`.
///
/// This class allows for custom icons to be provided for the share feature.
@JsonSerializable()
class AiutaShareIconsCustom extends AiutaShareIcons {
  /// Icon for sharing.
  final AiutaIcon share24;

  /// Creates an [AiutaShareIconsCustom] with the [share24] icon for sharing.
  AiutaShareIconsCustom({
    required this.share24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShareIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaShareIconsCustomToJson(this);
}
