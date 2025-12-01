import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_data_provider.g.dart';

/// A data provider for managing the wishlist state of products.
sealed class AiutaWishlistDataProvider {
  /// The type of the data provider, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaWishlistDataProvider] with the specified [type].
  AiutaWishlistDataProvider(this.type);

  // Internal json staff
  factory AiutaWishlistDataProvider.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaWishlistDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown share data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class AiutaWishlistDataProviderCustom extends AiutaWishlistDataProvider {
  /// A ValueListenable list of products IDs in the wishlist.
  /// This list is used to track which products are in the user's wishlist,
  /// so that the UI can draw the correct state for each product.
  ///
  /// Host app can chose to put all the products IDs in the [wishlistProductIds]
  /// or filter those that are passed to the Aiuta SDK.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final ValueListenable<List<String>> wishlistProductIds;

  /// Callback to set the [inWishlist] state for products with [productIds].
  ///
  /// SDK will call this function when the user tap on the wishlist button
  /// with the opposite state of [inWishlist] based on the current list in the
  /// [wishlistProductIds].
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final void Function(List<String> productIds, bool inWishlist)
      setProductInWishlist;

  /// Creates an [AiutaWishlistDataProvider] with the listenable [wishlistProductIds]
  /// indicating the products IDs in the wishlist and the callback
  /// [setProductInWishlist] that is called when the user
  /// taps on the wishlist button.
  AiutaWishlistDataProviderCustom({
    required this.wishlistProductIds,
    required this.setProductInWishlist,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaWishlistDataProviderCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaWishlistDataProviderCustomToJson(this);
}
