import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_icons.g.dart';

/// Configuration for the product bar icons.
sealed class AiutaProductBarIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaProductBarIcons] with the specified [type].
  AiutaProductBarIcons(this.type);

  // Internal json staff
  factory AiutaProductBarIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaProductBarIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaProductBarIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown product bar icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaProductBarIcons`.
///
/// This class represents the default, built-in icons for the product bar.
@JsonSerializable()
class AiutaProductBarIconsBuiltIn extends AiutaProductBarIcons {
  /// Creates an instance of the built-in product bar icons.
  AiutaProductBarIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaProductBarIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaProductBarIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaProductBarIcons`.
///
/// This class allows for custom icons to be provided for the product bar.
@JsonSerializable()
class AiutaProductBarIconsCustom extends AiutaProductBarIcons {
  /// Icon for the arrow.
  final AiutaIcon arrow16;

  /// Creates an [AiutaProductBarIconsCustom] with the [arrow16] icon that indicates
  /// that the product bar is expandable to show more information in the bottom
  /// sheet.
  AiutaProductBarIconsCustom({
    required this.arrow16,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaProductBarIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaProductBarIconsCustomToJson(this);
}
