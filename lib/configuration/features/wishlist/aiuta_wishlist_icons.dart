import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_icons.g.dart';

/// Icons used in the wishlist feature.
@JsonSerializable()
class AiutaWishlistIcons {
  /// Icon for the add to wishlist.
  final AiutaIcon wishlist24;

  /// Icon for the filled wishlist.
  final AiutaIcon wishlistFill24;

  /// Creates an [AiutaWishlistIcons] with the [wishlist24]
  /// and [wishlistFill24] icons.
  AiutaWishlistIcons({
    required this.wishlist24,
    required this.wishlistFill24,
  });

  // Internal json staff
  factory AiutaWishlistIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWishlistIconsToJson(this);
}
