import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_strings.g.dart';

/// The strings used in the wishlist feature.
sealed class AiutaWishlistStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaWishlistStrings] with the specified [type].
  AiutaWishlistStrings(this.type);

  // Internal json staff
  factory AiutaWishlistStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaWishlistStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaWishlistStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown wishlist strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaWishlistStrings`.
///
/// This class represents the default, built-in strings for the wishlist feature.
@JsonSerializable()
class AiutaWishlistStringsBuiltIn extends AiutaWishlistStrings {
  /// Creates an instance of the built-in wishlist strings.
  AiutaWishlistStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaWishlistStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWishlistStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaWishlistStrings`.
///
/// This class allows for custom strings to be provided for the wishlist feature.
@JsonSerializable()
class AiutaWishlistStringsCustom extends AiutaWishlistStrings {
  /// Text for the "Add to Wishlist" button.
  final String wishlistButtonAdd;

  /// Creates an [AiutaWishlistStringsCustom] with the [wishlistButtonAdd] text.
  AiutaWishlistStringsCustom({
    required this.wishlistButtonAdd,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWishlistStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaWishlistStringsCustomToJson(this);
}
