import 'package:flutter/foundation.dart';

/// A data provider for managing the wishlist state of products.
class AiutaWishlistDataProvider {
  /// A ValueListenable list of products IDs in the wishlist.
  /// This list is used to track which products are in the user's wishlist,
  /// so that the UI can draw the correct state for each product.
  ///
  /// Host app can chose to put all the products IDs in the [wishlistProductsIds]
  /// or filter those that are passed to the Aiuta SDK.
  final ValueListenable<List<String>> wishlistProductsIds;

  /// Callback to set the [inWishlist] state for a product with [productId].
  ///
  /// SDK will call this function when the user tap on the wishlist button
  /// with the opposite state of [inWishlist] based on the current list in the
  /// [wishlistProductsIds].
  final void Function(String productId, bool inWishlist) setProductInWishlist;

  /// Creates an [AiutaWishlistDataProvider] with the listenable [wishlistProductsIds]
  /// indicating the products IDs in the wishlist and the callback
  /// [setProductInWishlist] that is called when the user
  /// taps on the wishlist button.
  AiutaWishlistDataProvider({
    required this.wishlistProductsIds,
    required this.setProductInWishlist,
  });
}
