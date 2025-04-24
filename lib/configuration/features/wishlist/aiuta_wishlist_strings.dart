import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_strings.g.dart';

@JsonSerializable()
class AiutaWishlistStrings {
  /// Text for the "Add to Wishlist" button.
  final String wishlistButtonAdd;

  AiutaWishlistStrings({
    required this.wishlistButtonAdd,
  });

  /// Create a new instance of AiutaWishlistStrings from a json map.
  factory AiutaWishlistStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWishlistStringsToJson(this);
}
