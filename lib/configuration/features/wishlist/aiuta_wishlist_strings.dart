import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_strings.g.dart';

/// The strings used in the wishlist feature.
@JsonSerializable()
class AiutaWishlistStrings {
  /// Text for the "Add to Wishlist" button.
  final String wishlistButtonAdd;

  /// Creates an [AiutaWishlistStrings] with the [wishlistButtonAdd] text.
  AiutaWishlistStrings({
    required this.wishlistButtonAdd,
  });

  // Internal json staff
  factory AiutaWishlistStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWishlistStringsToJson(this);
}
