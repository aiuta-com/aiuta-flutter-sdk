import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_icons.g.dart';

/// Icons used for activity indicator.
sealed class AiutaActivityIndicatorIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaActivityIndicatorIcons] with the specified [type].
  AiutaActivityIndicatorIcons(this.type);

  // Internal json staff
  factory AiutaActivityIndicatorIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaActivityIndicatorIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaActivityIndicatorIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on loading page icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaActivityIndicatorIcons`.
@JsonSerializable()
class AiutaActivityIndicatorIconsBuiltIn extends AiutaActivityIndicatorIcons {
  /// Creates an instance of the built-in activity indicator theme.
  AiutaActivityIndicatorIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaActivityIndicatorIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaActivityIndicatorIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaActivityIndicatorIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaActivityIndicatorIcons`.
@JsonSerializable()
class AiutaActivityIndicatorIconsCustom extends AiutaActivityIndicatorIcons {
  /// Icon for the loading page.
  final AiutaIcon loading14;

  /// Creates an [AiutaActivityIndicatorIcons] with [loading14] icon,
  /// that will spin to indicate the loading activity.
  AiutaActivityIndicatorIconsCustom({
    required this.loading14,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaActivityIndicatorIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaActivityIndicatorIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaActivityIndicatorIconsCustomToJson(this);
}
