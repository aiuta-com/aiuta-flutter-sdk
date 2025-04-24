import 'dart:async';

class AiutaWishlistDataProvider {
  /// Stream of product IDs in the wishlist.
  final Stream<List<String>> productWishlistState;

  /// Callback to set the wishlist state for a product.
  final void Function(String productId, bool inWishlist) setWishlistStateAction;

  AiutaWishlistDataProvider({
    required this.productWishlistState,
    required this.setWishlistStateAction,
  });
}
