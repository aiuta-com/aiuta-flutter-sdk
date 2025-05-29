import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_icons.g.dart';

/// Icons used in the wishlist feature.
sealed class AiutaWishlistIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaWishlistIcons] with the specified [type].
  AiutaWishlistIcons(this.type);

  // Internal json staff
  factory AiutaWishlistIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWishlistIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWishlistIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown wishlist icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWishlistIcons`.
///
/// This class represents the default, built-in icons for the wishlist feature.
@JsonSerializable()
class AiutaWishlistIconsBuiltIn extends AiutaWishlistIcons {
  /// Creates an instance of the built-in wishlist icons.
  AiutaWishlistIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWishlistIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWishlistIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWishlistIcons`.
///
/// This class allows for custom icons to be provided for the wishlist feature.
@JsonSerializable()
class AiutaWishlistIconsCustom extends AiutaWishlistIcons {
  /// Icon for the wishlist.
  final AiutaIcon wishlist24;

  /// Icon for the filled wishlist.
  final AiutaIcon wishlistFill24;

  /// Creates an [AiutaWishlistIcons] with the [wishlist24]
  /// and [wishlistFill24] icons.
  AiutaWishlistIconsCustom({
    required this.wishlist24,
    required this.wishlistFill24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWishlistIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWishlistIconsCustomToJson(this);
}
