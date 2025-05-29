import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_strings.dart';

final class TryOnCartFeatureBuilder {
  AiutaTryOnCartFeature build() => AiutaTryOnCartFeature(
        strings: AiutaTryOnCartStringsCustom(
          addToCart: "Add to cart",
        ),
        handler: AiutaTryOnCartHandler(
          addToCart: (productId) {
            print("add to cart: $productId");
          },
        ),
      );
}
