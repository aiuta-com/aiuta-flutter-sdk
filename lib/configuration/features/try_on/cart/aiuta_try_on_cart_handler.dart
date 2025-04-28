/// Handler for managing the "Add to Cart" action in the Aiuta Try-On feature.
class AiutaTryOnCartHandler {
  /// Callback to handle the "Add to Cart" action.
  final void Function(String productId) addToCartAction;

  /// Creates an [AiutaTryOnCartHandler] with the required [addToCartAction]
  /// to handle the user's intention to add the product used for the try-on
  /// to the host app's cart.
  AiutaTryOnCartHandler({
    required this.addToCartAction,
  });
}
