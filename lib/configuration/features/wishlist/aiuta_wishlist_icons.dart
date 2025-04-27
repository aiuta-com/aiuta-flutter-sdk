import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_icons.g.dart';

@JsonSerializable()
class AiutaWishlistIcons {
  /// Icon for the wishlist.
  final AiutaIcon wishlist24;

  /// Icon for the filled wishlist.
  final AiutaIcon wishlistFill24;

  AiutaWishlistIcons({
    required this.wishlist24,
    required this.wishlistFill24,
  });

  /// Create a new instance of AiutaWishlistIcons from a json map.
  factory AiutaWishlistIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWishlistIconsToJson(this);
}
