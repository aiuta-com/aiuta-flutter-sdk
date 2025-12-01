/// Handler for managing the "Add to Cart Outfit" action in the Aiuta Try-On feature.
class AiutaTryOnCartOutfitHandler {
  /// Callback to handle the "Add to Cart Outfit" action.
  final void Function(List<String> productIds) addToCartOutfit;

  /// Creates an [AiutaTryOnCartOutfitHandler] with the required [addToCartOutfit]
  /// to handle the user's intention to add multiple products used for the try-on
  /// to the host app's cart.
  AiutaTryOnCartOutfitHandler({
    required this.addToCartOutfit,
  });
}
